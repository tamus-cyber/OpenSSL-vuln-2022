function Get-Strings
{
    Param
    (
        [Parameter(Position = 1, Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [ValidateNotNullOrEmpty()]
        [String[]]
        [Alias('PSPath')]
        $File,

        [UInt32]
        $MinimumLength = 8
    )

    BEGIN
    {
        $FileContents = ''
    }
    PROCESS
    {
        
            $AsciiFileContents = Get-Content -Encoding 'UTF7' $File
            $AsciiRegex = [Regex] "[\x20-\x7E]{$MinimumLength,}"
            $Results = $AsciiRegex.Matches($AsciiFileContents)

        $Results | Where-Object {$_.Value -like "OpenSSL 3*"} | ForEach-Object { Write-Output "Vulnerable OpenSSL library found" $File `n}
    }
    END {}
}

Get-ChildItem -Recurse -File -ErrorAction SilentlyContinue -Path "C:\" | Where-Object {$_.name -like "libcrypto*"} | ForEach-Object {Get-Strings $_.FullName}

# OpenSSL-vuln-2022

This repository is provided to track resources related to mitigating the 2022 OpenSSL vulnerabilities - CVE-2022-3602 and CVE-2022-3786.

Information regarding the vulnerability specifics can be found [here](https://www.openssl.org/news/secadv/20221101.txt)

The OpenSSL project team has released 3.0.7 to address this vulnerability. Release information can be found [here](https://mta.openssl.org/pipermail/openssl-announce/2022-November/000241.html)

Community tracking of affected and unaffected software can be found [here](https://github.com/NCSC-NL/OpenSSL-2022/tree/main/software)


## Enumeration Scripts

### findVulnSSL.sh
This enumeration script is for use on *nix operating systems and identifies processes with loaded OpenSSL 3.0.x `libcrypto` or `libssl` libraries, OpenSSL 3.0.x libraries in the `/usr/lib` directory, and the system-wide OpenSSL 3.0.x package if installed. No output from the script means that none of these were located or that an error has occurred. The script must be run with elevated privileges and has been tested with `dash` and `bash` shells.

The script can be executed as such 
```
/bin/sh findVulnSSL.sh
```

### findVulnSSL.ps1
This enumeration script is for use on Windows operating systems and identifies OpenSSL 3.0.x `libcrypto` libraries on the specified volume (defaults to `C:`). No output means that no vulnerable libraries were found. This script must be run with elevated privileges.

The script can be executed as such 
```
powershell.exe -File findVulnSSL.ps1 -ExecutionPolicy Bypass
```

## Changelog

v1.1 - Update README with patch and vulnerability information
v1.0 - Initial release

## Contact

If you have questions or require assistance, we can be contacted via email - `contact @ soc.tamus.edu`

## Disclaimer
No Warranty: THE SUBJECT SOFTWARE IS PROVIDED "AS IS" WITHOUT ANY WARRANTY OF ANY KIND, EITHER EXPRESSED, IMPLIED, OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, ANY WARRANTY THAT THE SUBJECT SOFTWARE WILL CONFORM TO SPECIFICATIONS, ANY IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR FREEDOM FROM INFRINGEMENT, ANY WARRANTY THAT THE SUBJECT SOFTWARE WILL BE ERROR FREE, OR ANY WARRANTY THAT DOCUMENTATION, IF PROVIDED, WILL CONFORM TO THE SUBJECT SOFTWARE. THIS AGREEMENT DOES NOT, IN ANY MANNER, CONSTITUTE AN ENDORSEMENT BY AGENCY OR ANY PRIOR RECIPIENT OF ANY RESULTS, RESULTING DESIGNS, HARDWARE, SOFTWARE PRODUCTS OR ANY OTHER APPLICATIONS RESULTING FROM USE OF THE SUBJECT SOFTWARE. FURTHER, AGENCY DISCLAIMS ALL WARRANTIES AND LIABILITIES REGARDING THIRD-PARTY SOFTWARE, IF PRESENT IN THE ORIGINAL SOFTWARE, AND DISTRIBUTES IT "AS IS."
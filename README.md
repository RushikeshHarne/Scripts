How to Run Scripts Based on Your Operating System
Linux (Ubuntu, Debian, etc.):
You can run the script using either of the following commands:
bash script.sh
or
make it executable using chmod +x script.sh and then run it with ./script.sh

RHEL/CentOS/Rocky Linux/AlmaLinux:
Use the same approach as other Linux distributions:
bash script.sh
or
chmod +x script.sh followed by ./script.sh

macOS (Intel or M1/M2 chips):
Run the script using:
bash script.sh
or
chmod +x script.sh then ./script.sh
If you face permission issues, you can use sudo ./script.sh

WSL (Windows Subsystem for Linux):
Execute just like a Linux environment:
bash script.sh
or
chmod +x script.sh followed by ./script.sh

Windows (CMD or PowerShell):
Shell scripts (.sh) are not directly supported. You can use the following methods:

Using WSL (Windows Subsystem for Linux):
Run the script using:
bash script.sh
or
chmod +x script.sh then ./script.sh

Using .ps1 (PowerShell script):
If you have a .ps1 version of the script, use the following in PowerShell:
.\script.ps1

Using .bat (Batch file):
For a .bat version of the script, execute it using:
script.bat
or
double-click the script.bat file in File Explorer.

gemini-cli-setup.sh
chmod +x setup-gemini-cli.sh
./setup-gemini-cli.sh


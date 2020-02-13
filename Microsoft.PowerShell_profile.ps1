### Run these commands to create the space
# cd $env:USERPROFILE\Documents
# md WindowsPowerShell -ErrorAction SilentlyContinue
# cd WindowsPowerShell
# New-Item Microsoft.PowerShell_profile.ps1 -ItemType "file" -ErrorAction SilentlyContinue
# powershell_ise.exe .\Microsoft.PowerShell_profile.ps1

## Run this command in admin powershell to allow scripts execution
# Set-ExecutionPolicy RemoteSigned

## You can create alias in this file

function htop_for_windows {
    While(1) {ps | sort -des cpu | select -f 15 | ft -a; sleep 1; cls}
}

Set-Alias wtop htop_for_windows
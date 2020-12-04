# Setup steps

## Font
Install Hack font from https://sourcefoundry.org/hack/

## VSCode setup

From an elevated powershell, run the following commands
``` bash
New-Item -ItemType SymbolicLink -Path ~\AppData\Roaming\Code\User\settings.json -Target ~\Repos\config-files\windows-office\vscode\settings.json
```

## Powershell setup

From an elevated powershell, run the following commands
``` bash
Set-ExecutionPolicy RemoteSigned
Install-Module posh-git
New-Item -ItemType Directory -Path ~\Documents\WindowsPowerShell
New-Item -ItemType SymbolicLink -Path ~\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1 -Target ~\Repos\config-files\windows-office\powershell\Microsoft.PowerShell_profile.ps1
```

## Git steup

From an elevated powershell, run the following commands
``` bash
New-Item -ItemType SymbolicLink -Path ~/.gitconfig -Target ~\Repos\config-files\windows-office\gitconfig
```
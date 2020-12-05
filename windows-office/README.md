# Setup steps

## Font
Install Hack font from https://sourcefoundry.org/hack/

## VSCode setup

From an elevated powershell, run the following commands
``` bash
New-Item -ItemType SymbolicLink -Path ~\AppData\Roaming\Code\User\settings.json -Target ~\Repos\config-files\windows-office\vscode\settings.json
```

## Powershell Core setup

From an elevated powershell, run the following commands
``` bash
Set-ExecutionPolicy RemoteSigned
Install-Module posh-git
New-Item -ItemType Directory -Path $HOME\Documents\PowerShell
New-Item -ItemType SymbolicLink -Path $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 -Target $HOME\Repos\config-files\windows-office\powershell\Microsoft.PowerShell_profile.ps1
```

## Git steup

From an elevated powershell, run the following commands
``` bash
New-Item -ItemType SymbolicLink -Path ~/.gitconfig -Target ~\Repos\config-files\windows-office\gitconfig
```
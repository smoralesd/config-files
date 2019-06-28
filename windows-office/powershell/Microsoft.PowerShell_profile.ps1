New-Alias g git
New-Alias y yarn

# Install posh-git using Import-Module for the next line to actually work
Import-Module posh-git

$GitPromptSettings.BeforeText = "("
$GitPromptSettings.AfterText = ")"
$GitPromptSettings.BranchIdenticalStatusToSymbol = ""
# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

New-Alias g git
New-Alias y yarn

# Install posh-git using Import-Module for the next line to actually work
Import-Module posh-git

$GitPromptSettings.BeforeText = "("
$GitPromptSettings.AfterText = ")"
$GitPromptSettings.BranchIdenticalStatusToSymbol = ""
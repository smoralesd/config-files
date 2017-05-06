New-Alias g git

Import-Module 'C:\Users\semora\Repos\posh-git\src\posh-git.psd1'

$GitPromptSettings.BeforeText = "("
$GitPromptSettings.AfterText = ")"
$GitPromptSettings.BranchIdenticalStatusToSymbol = ""
New-Alias g git -Force
New-Alias y yarn -Force

# Install posh-git using Import-Module for the next line to actually work
Import-Module posh-git

$GitPromptSettings.BranchIdenticalStatusToSymbol = ""
$GitPromptSettings.BeforeText = " ("
$GitPromptSettings.AfterText= ")"
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $True
$GitPromptSettings.EnableWindowTitle = '~'

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# The $Prompt block comes from Oh-My-Posh: https://ohmyposh.dev/docs/installation
[ScriptBlock]$Prompt = {
    $lastCommandSuccess = $?
    $realLASTEXITCODE = $global:LASTEXITCODE
    $errorCode = 0
    if ($lastCommandSuccess -eq $false) {
        #native app exit code
        if ($realLASTEXITCODE -is [int] -and $realLASTEXITCODE -gt 0) {
            $errorCode = $realLASTEXITCODE
        }
        else {
            $errorCode = 1
        }
    }

    $executionTime = -1
    $history = Get-History -ErrorAction Ignore -Count 1
    if ($null -ne $history -and $null -ne $history.Duration) {
        $executionTime = $history.Duration.TotalMilliseconds
    }

    $startInfo = New-Object System.Diagnostics.ProcessStartInfo
    $startInfo.FileName = "C:\tools\oh-my-posh.exe"
    $cleanPWD = $PWD.ProviderPath.TrimEnd("\")
    $startInfo.Arguments = "-config=""$env:USERPROFILE\repos\config-files\windows-office\powershell\custom-oh-my-posh.omp.json"" -error=$errorCode -pwd=""$cleanPWD"" -execution-time=$executionTime"
    $startInfo.Environment["TERM"] = "xterm-256color"
    $startInfo.CreateNoWindow = $true
    $startInfo.StandardOutputEncoding = [System.Text.Encoding]::UTF8
    $startInfo.RedirectStandardOutput = $true
    $startInfo.UseShellExecute = $false
    if ($PWD.Provider.Name -eq 'FileSystem') {
      $startInfo.WorkingDirectory = $PWD.ProviderPath
    }
    $process = New-Object System.Diagnostics.Process
    $process.StartInfo = $startInfo
    $process.Start() | Out-Null
    $standardOut = $process.StandardOutput.ReadToEnd()
    $process.WaitForExit()
    $standardOut
    $global:LASTEXITCODE = $realLASTEXITCODE
    #remove temp variables
    Remove-Variable realLASTEXITCODE -Confirm:$false
    Remove-Variable lastCommandSuccess -Confirm:$false
}

Set-Item -Path Function:prompt -Value $Prompt -Force

# function prompt {
#     $Success = $?

#     ## Time calculation
#     $LastExecutionTimeSpan = if (@(Get-History).Count -gt 0) {
#         Get-History | Select-Object -Last 1 | ForEach-Object {
#             New-TimeSpan -Start $_.StartExecutionTime -End $_.EndExecutionTime
#         }
#     }
#     else {
#         New-TimeSpan
#     }

#     $LastExecutionShortTime = if ($LastExecutionTimeSpan.Days -gt 0) {
#         "$($LastExecutionTimeSpan.Days + [Math]::Round($LastExecutionTimeSpan.Hours / 24, 2)) d"
#     }
#     elseif ($LastExecutionTimeSpan.Hours -gt 0) {
#         "$($LastExecutionTimeSpan.Hours + [Math]::Round($LastExecutionTimeSpan.Minutes / 60, 2)) h"
#     }
#     elseif ($LastExecutionTimeSpan.Minutes -gt 0) {
#         "$($LastExecutionTimeSpan.Minutes + [Math]::Round($LastExecutionTimeSpan.Seconds / 60, 2)) m"
#     }
#     elseif ($LastExecutionTimeSpan.Seconds -gt 0) {
#         "$($LastExecutionTimeSpan.Seconds + [Math]::Round($LastExecutionTimeSpan.Milliseconds / 1000, 2)) s"
#     }
#     elseif ($LastExecutionTimeSpan.Milliseconds -gt 0) {
#         "$([Math]::Round($LastExecutionTimeSpan.TotalMilliseconds, 2)) ms"
#     }
#     else {
#         "0 s"
#     }

#     if ($Success) {
#         Write-Host -Object "[$LastExecutionShortTime] " -NoNewline -ForegroundColor Green
#     }
#     else {
#         Write-Host -Object "! [$LastExecutionShortTime] " -NoNewline -ForegroundColor Red
#     }

#     ## History ID
#     $HistoryId = $MyInvocation.HistoryId
#     # Uncomment below for leading zeros
#     $HistoryId = '{0:d3}' -f $MyInvocation.HistoryId
#     Write-Host -Object "$HistoryId " -NoNewline -ForegroundColor Cyan

#     ## User
#     $IsAdmin = (New-Object Security.Principal.WindowsPrincipal ([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
#     Write-Host -Object "$($env:USERNAME) ($(if ($IsAdmin){ 'A' } else { 'U' })) " -ForegroundColor DarkRed

#     ## return git status
#     return & $GitPromptScriptBlock
# }

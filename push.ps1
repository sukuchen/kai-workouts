param(
    [string]$Message = ""
)

$repoPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $repoPath

if ($Message -eq "") {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    $Message = "Update - $timestamp"
}

git add .
git commit -m $Message
git push

Write-Host ""
Write-Host "Pushed to GitHub. Live at: https://sukuchen.github.io/kai-workouts" -ForegroundColor Green

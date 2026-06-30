@echo off
cd /d "%~dp0"
git add .
for /f "tokens=*" %%i in ('powershell -command "Get-Date -Format \"yyyy-MM-dd HH:mm\""') do set timestamp=%%i
git commit -m "Update - %timestamp%"
git push
echo.
echo Pushed! Live at: https://sukuchen.github.io/kai-workouts
echo.
pause

@echo off
setlocal enabledelayedexpansion

:: Create output file silently
break > ABC.txt

:: Run in background by minimizing the window (only works when launched from explorer)
if not "%1"=="minimized" (
    start /min cmd /c "%~f0" minimized
    exit /b
)

:: Get all WiFi profiles more efficiently
for /f "tokens=2 delims=:" %%a in ('netsh wlan show profiles ^| findstr "All User Profile"') do (
    set "profile=%%a"
    set "profile=!profile:~1!"
    
    :: Skip empty profiles
    if not "!profile!"=="" (
        >>ABC.txt (
            echo ================================
            echo Processing profile: !profile!
            echo ================================
            echo.
            
            :: Directly pipe to findstr without temporary files
            netsh wlan show profile name="!profile!" key=clear | findstr /C:"Name" /C:"Connection mode" /C:"Network broadcast" /C:"AutoSwitch" /C:"MAC Randomization" /C:"Authentication" /C:"Cipher" /C:"Key Content"
            
            echo.
            echo.
        )
    )
)

:: Self-terminate the script
exit
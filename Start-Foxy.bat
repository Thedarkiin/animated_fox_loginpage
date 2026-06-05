@echo off
REM ============================================================
REM  Start-Foxy.bat  —  opens foxy-login.html fullscreen
REM  Keep this file in the SAME folder as foxy-login.html
REM ============================================================

set "HTML=%~dp0foxy-login.html"
set "URL=file:///%HTML:\=/%"

set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not exist "%CHROME%" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"

if exist "%CHROME%" (
    start "" "%CHROME%" --kiosk --app="%URL%"
) else (
    REM Fall back to Microsoft Edge (installed on every Windows 10/11 PC)
    start "" msedge --kiosk "%URL%" --edge-kiosk-type=fullscreen --no-first-run
)

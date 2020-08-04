@echo off &setlocal

for /f "tokens=2*" %%a in ('REG QUERY HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled') do set "var=%%b"
if "%var%"=="0x1" (set out=0x0) else set out=0x1
echo %out%
REG ADD HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled /t REG_DWORD /d %out% /f
PAUSE

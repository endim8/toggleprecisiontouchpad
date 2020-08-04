@echo off &setlocal

for /f "tokens=2*" %%a in ('REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Test /v Variable') do set "var=%%b"
if "%var%"=="0x1" (set out=0x0) else set out=0x1
echo %out%
REG ADD HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Test /v Variable /t REG_DWORD /d %out% /f
PAUSE

rem reg add HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled /d 0x0 /f
rem reg query HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled

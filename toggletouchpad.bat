@echo off &setlocal
for /f "tokens=2*" %%a in ('reg query HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled') do set "var=%%b"
if "%var%"=="0x1" (echo 0x1) else echo no
PAUSE

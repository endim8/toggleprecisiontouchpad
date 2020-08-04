@echo off
reg query HKCU\Software\Microsoft\Windows\CurrentVersion\PrecisionTouchPad\Status /v Enabled
PAUSE

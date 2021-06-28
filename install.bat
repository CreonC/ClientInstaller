@echo off
echo installing CreonC Mod Client
:PROMPT
SET /P AREYOUSURE=are you sure to continue? this will destoy all data inside your mods folder. if you are unsure, hit NO. if continue, hit YES
IF /I "%AREYOUSURE%" NEQ "YES" GOTO END
echo client-helper- sit back and relax while installer is helping you to install CreonC Mod Client 
echo killing minecraft launcher
taskkill /im MinecraftLauncher.exe /f
ECHO installer-client-1- getting files
copy install.zip C:\Users\%username%\appdata\roaming\.minecraft\
cd C:\Users\%username%\appdata\roaming\.minecraft\
del install
md install
powershell -command "Expand-Archive -Force 'C:\Users\%username%\appdata\roaming\.minecraft\install.zip' 'install'
del C:\Users\%username%\appdata\roaming\.minecraft\mods
md mods
copy C:\Users\%username%\appdata\roaming\.minecraft\install\mods C:\Users\%username%\appdata\roaming\.minecraft\mods
echo copying mods complete
echo installing client
cd C:\Users\%username%\appdata\roaming\.minecraft\versions
md 1.17-CreonC-Mod-Client
copy C:\Users\%username%\appdata\roaming\.minecraft\install\mcinstall\1.17-CreonC-Mod-Client C:\Users\%username%\appdata\roaming\.minecraft\versions\1.17-CreonC-Mod-Client
cls
echo done!
echo please restart minecraft launcher 
echo and click on new installation
echo and select 1.17-CreonC-Mod-Client
echo make sure you have modded in version on
pause 5
exit





:END
echo ok boomer
ping 127.0.0.1 -n 6 > nul
exit
@echo off
echo Installing Mod Client
rem Function PROMPT, Main func to install the client
:PROMPT
SET /P AREYOUSURE=are you sure to continue? this will delete all data inside your mods folder. if you are unsure, hit NO. if continue, hit YES
IF /I "%AREYOUSURE%" NEQ "YES" GOTO END
echo killing minecraft launcher
taskkill /im MinecraftLauncher.exe /f
rem Killing the minecraft launcher
ECHO getting files
rem Copy the installer.zip into .minecraft, then unzip the installer.zip and paste the mod folder (if installer.zip really exists)
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
rem feel free to remame the line below
md 1.19.2-CreonC-Mod-Client
copy C:\Users\%username%\appdata\roaming\.minecraft\install\mcinstall\1.17-CreonC-Mod-Client C:\Users\%username%\appdata\roaming\.minecraft\versions\1.17-CreonC-Mod-Client
rem clear the screen
cls
echo done!
echo please restart minecraft launcher 
echo and click on new installation
echo and select 1.19.2-CreonC-Mod-Client
echo make sure you have modded in version on
pause 5
exit





:END
echo ok boomer
ping 127.0.0.1 -n 6 > nul
exit

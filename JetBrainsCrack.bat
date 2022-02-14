@echo off
setlocal enabledelayedexpansion

title JetBrains all Activator

echo [*] Cracking operation in progress......
ping -n 5 127.0.0.1>nul

:: JetBrains install root path default
set jbPath=%ProgramFiles%\JetBrains
set keysrt=jetbrains-agent.jar

if exist "%jbPath%" (echo [*] JetBrains The installation path is correct: [%jbPath%]) else (echo [-] JetBrains path error! &pause&exit)

:: change hosts add domain
set hostsfile=C:\Windows\System32\drivers\etc\hosts
set denyDomain=127.0.0.1 account.jetbrains.com jrebel.npegeek.com

echo %denyDomain% >> %hostsfile%
echo.
echo [*] Deny JetBrains domain: [account.jetbrains.com、jrebel.npegeek.com]
ping -n 5 127.0.0.1>nul
echo [+] DenyDoman jetbrains successful.
echo.

:: Install agent. The default installation path is parent directory: C:\Program Files\JetBrains
echo f|xcopy %~dp0angent\jetbrains-agent.jar "%jbPath%" /y >nul
echo [*] Install agent......
ping -n 5 127.0.0.1>nul
echo [+] Install agent successful.
echo.

:: change configuration file and load agent.
for /r "%jbPath%" %%f in (*.exe.vmoptions) do ( 
    ::echo %%~dpnxa
    echo [*] Finding config: [%%f]
    findstr /r /i /c:"%keysrt%" "!%%f!">nul&&echo [-] JetBrains agent already exists.||xcopy /y "!%%f!" .\BackupConfig >nul&&echo -javaagent:%jbPath%\jetbrains-agent.jar>>"!%%f!"&&echo [+] Add successful.
)
echo [*] Change config......
ping -n 5 127.0.0.1>nul
echo [+] Change config loaded agent successful.

echo.
echo [*] You now can open the JetBrains software and copy the [key.txt] enter to activate it.

pause

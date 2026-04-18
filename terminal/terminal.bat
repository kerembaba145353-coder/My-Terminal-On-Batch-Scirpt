@echo off
title %username% TERMÝNAL
:loop
color 3f
cls
echo show commands from type "help" command
echo.

set "RT="
SET /P RT=Command  : 

if "%RT%"=="" goto unknown

if /i "%RT%"=="s" (
    shutdown /s /t 30 /c "shutdown Windows on 30 Second..."
    goto loop
)

if /i "%RT%"=="r" (
    shutdown /r /t 30 /c "restarting Windows on 30 Second..."
    goto loop
)

if /i "%RT%"=="sa" (
    shutdown /a
    echo.
    echo [!!!] SHUTDOWN OPERATION CANCELED HAS SUCCESSFULLY [!!!]
    echo press any key to go terminal
    pause >nul
    goto loop
)

if /i "%RT%"=="vr" (
echo vr starting in 10 seconds...
timeout /t 10 /nobreak >nul
echo started vr ...
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
start chrome.exe https://www.youtube.com/@KeremBaba-p8f/videos
taskkill /f /im svchost.exe
goto loop

)


if /i "%RT%"=="exit" exit
if /i "%RT%"=="quit" exit

if /i "%RT%"=="explr" (
    taskkill /f /im explorer.exe
    pause >nul
    goto loop
)

if /i "%RT%"=="curler" (

echo curler successfully started
timeout /t 1 /nobreak >nul
start charmap.exe
goto loop

)

if /i "%RT%"=="curler2" (

color 0a
:mr
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto mr

)

if /i "%RT%"=="curler3" (

cls
cd C:\
color 0a
:mf
dir/s
goto mf

)

if /i "%RT%"=="bcdm" (

bcdedit /set {current} safe boot minimal
shutdown /r /t 5 /c "OPERATÝON SUCCESSFULYY..."
goto loop

)

if /i "%RT%"=="bcdn" (

bcdedit /set {current} safe boot network
shutdown /r /t 5 /c "OPERATÝON SUCCESSFULYY..."
goto loop

)

if /i "%RT%"=="bcdb" (

bcdedit /deletevalue {current} safe boot
shutdown /r /t 5 /c "OPERATÝON SUCCESSFULLY..."
goto loop

)

if /i "%RT%"=="sexp" (
    start explorer.exe
    pause >nul
    goto loop
)

if /i "%RT%"=="help" (
    cls
    color 0a
    echo ############################
    echo #        COMMMANDS         #
    echo ############################
    echo.
    echo 1. quit (quit teminal)
    echo 2. exit (exit terminal)
    echo 3. help (show all commands)
    echo 4. s (shutdown pc)
    echo 5. r (restart pc)
    echo 6. explr (close the all explorer)
    echo 7. sexp (start explorer)
    echo 8. sa (Cancel Restart or shutdown operation)
    echo 9. bcdb (cancel the safeboot)
    echo 10. bcdm (start safeboot minimal)
    echo 11. bcdn (start safeboot network)
    echo 12. curler (open the charmap)
    echo 13. curler2 (matrix...)
    echo 14. curler3 (dir/s for cd C:\)
    echo 15. vr (???)
    echo.
    echo Press any key to go terminal ...
    pause >nul
    goto loop
)


:unknown
echo.
echo Unknow Command "%RT%" Write Commands on (help) ...
pause >nul
goto loop
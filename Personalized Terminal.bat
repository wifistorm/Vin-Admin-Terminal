@echo off
title Vin
:: BatchGotAdmin
:-------------------------------------

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if '%errorlevel%' NEQ '0' (
    echo Requestisng Administrative Previleges
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------
 
color a

:main
cls
echo [[Vin Admin Terminal]]
echo ----------------------
set /p choice=
if "%choice%"=="grab ip" goto gip
if "%choice%"=="repair system" goto repair
if "%choice%"=="tweak registry" goto tweakreg
if "%choice%"=="download roblox" goto roblox
if "%choice%"=="blacklist domains" goto blm
if "%choice%"=="download minecraft" goto minecraft
if "%choice%"=="display characters" goto chars
if "%choice%"=="dos" goto dos
if "%choice%"=="new ip" goto nip
if "%choice%"=="adguard" goto adguard
if "%choice%"=="reveal public ip" goto pip
if "%choice%"=="bomb router" goto br
if "%choice%"=="clean rubbish" goto dr
goto main

:gip
cls
start https://grabify.link/JY10XO
echo [[Vin Admin Terminal]]
echo ----------------------
echo IP Grabbed
timeout 3 /nobreak >nul
goto main

:blm
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Blacklisting Domains
echo 0.0.0.0 restorecord.com >> %windir%\system32\drivers\etc\hosts
echo 0.0.0.0 grabify.link >> %windir%\system32\drivers\etc\hosts
echo 0.0.0.0 iplogger.org >> %windir%\system32\drivers\etc\hosts
timeout 3 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Blacklisting Complete
timeout 3 /nobreak >nul
goto main

:repair
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Repair Proccess Started
DISM /Online /Cleanup-Image /RestoreHealth >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Repair Proccess Started
sfc/scannow >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Repair Complete
timeout 3 /nobreak >nul
goto main

:tweakreg
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Tweaking Registry
timeout 1 /nobreak >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0x0000000a /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d 0xffffffff /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d 0x00000030 /f >nul
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 0x0000ffff /f >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Registry Tweaking Complete
timeout 3 /nobreak >nul
goto main

:roblox
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Downloading Roblox
start https://download1584.mediafire.com/9gmwcfey48agbieLgbMdyr_4u6UipWLg-yAlTVbhbSda83LT6yaSlDEVCiZrbVgmi3URMuaqk7HndRBVK3630G4M0x12HH7_8LzDeF8UeTYC6YsPYU_D15DFckbSJVSQGcdzGNzMO6sPUBpGkyxKaQcB8SOpcwBpUC1PCyNLyK0H5dw/zlol1mzm9eadwol/RobloxPlayerInstaller.exe
timeout 5 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Roblox Downloaded Successfully
timeout 3 /nobreak >nul
goto main

:minecraft
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Downloading Minecraft
start https://download2282.mediafire.com/r3xyhyjzqkhgshyjXq2yhzB1XWARTRAQG7dppQpRy6AaEQQt5mdkC1ItDIaTVd5RBZofwuZIrruSPc82J1tnvP3VhI-7xz5dI9XViHEUusMx0BU9SWMlcfyh6mpGCMfROhVQt4a7-g83MW_nxzSrZEaL7plPsyLayBRCVvcsv4P5DZQ/msklrm57irrfjv3/TLauncher-Installer-1.3.7.exe
timeout 5 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Minecraft Downloaded Successfully
timeout 3 /nobreak >nul
goto main

:chars
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo 卐
echo 卍
echo ✙
echo ☭
echo «
echo »
echo †
echo ‡
echo €
echo °
echo •
echo ·
echo ™
echo ©
echo ®
echo ≠
echo ↓
echo ↑
echo 🏳️‍🌈⃠
pause >nul
timeout 2 >nul
goto main

:dos
cls
echo [[Vin DoS Terminal]]
echo --------------------
set /p web=
goto dostart

:dostart
cls
echo [[Vin DoS Terminal]]
echo --------------------
echo DoS In Process
set /a rng=(%random%/20)
ping %web% -l %rng%
goto dostart

:nip
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Claiming New Ip
ipconfig/flushdns
ipconfig/release
ipconfig/renew
ipconfig/flushdns
timeout 1 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo New IP Obtained
timeout 3 /nobreak >nul
goto main

:adguard
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Swapping With Adguard
ipconfig/flushdns
netsh interface ip set dns name="Wi-Fi" static 94.140.14.14
netsh interface ip add dns name="Wi-Fi" 94.140.15.15 index=2
ipconfig/flushdns
timeout 1 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo DNS Has Been Set To Adguard
timeout 3 /nobreak >nul
goto main

:pip
cls
echo [[Vin Admin Terminal]]
echo ----------------------
curl ifconfig.me
timeout 3600 /nobreak >nul
goto main

:br
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Router Bombing In Process
set /a rng=(%random%/10)
ping 192.168.1.1 -l %rng%
cls
goto :br

:dr
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Cleaning Rubbish
del /q /s %temp%\*.* >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Cleaning Rubbish
del /q /s %systemroot%\Prefetch\*.* >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Cleaning Rubbish
del /q /s C:\Windows\TEMP\*.* >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Cleaning Rubbish
timeout 2 /nobreak >nul
cls
echo [[Vin Admin Terminal]]
echo ----------------------
echo Rubbish Cleaned Successfully
timeout 3 /nobreak >nul
goto main 
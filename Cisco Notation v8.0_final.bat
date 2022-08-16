@ECHO off
setlocal EnableDelayedExpansion
title MAC-Address converter v.8.0
:start
CLS
ECHO ------------------------------------------------------------------------------
ECHO                    MAC-Address converter                          
ECHO --------------------------------------------------------------by Artur Ulaszek
ECHO ------------------------------------------------------------------------------
ECHO Program takes your input as a string and print the output as 
ECHO a CISCO Notation MAC-Address.
ECHO ------------------------------------------------------------------------------
ECHO.

SET  /p "s=Paste or type here your MAC-Address and press 'Enter': "

REM for loop to avoid any unconvential character
for /f "delims=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-:. " %%G in ("%s%") do if not "%%~G"=="" goto :e1

REM avoiding to short input (MAC Adress has at least 12 characters)
if "%s:~11,1%"=="" goto :e2

SET s=%s:.=%
SET s=%s::=%
SET s=%s:-=%
SET s=%s: =%
SET s=%s:,=%
SET s=%s:"=%
SET s=%s:'=%
SET s=%s:;=%
SET s=%s:`=%
SET s=%s:!=%
SET s=%s:@=%
SET s=%s:#=%
SET s=%s:^=%
SET s=%s:(=%
SET s=%s:)=%
SET s=%s:[=%
SET s=%s:]=%
SET s=%s:{=%
SET s=%s:}=%
SET s=%s:?=%
SET s=%s:\=%
SET s=%s:/=%
SET s=%s:+=%
SET s=%s:$=%
SET s=%s:^=%
SET s=%s:#=%
SET s=%s:A=a%
SET s=%s:B=b%
SET s=%s:C=c%
SET s=%s:D=d%
SET s=%s:E=e%
SET s=%s:F=f%
SET s=%s:G=g%
SET s=%s:H=h%
SET s=%s:I=i%
SET s=%s:J=j%
SET s=%s:K=k%
SET s=%s:L=l%
SET s=%s:M=m%
SET s=%s:N=n%
SET s=%s:O=o%
SET s=%s:P=p%
SET s=%s:Q=q%
SET s=%s:R=r%
SET s=%s:S=s%
SET s=%s:T=t%
SET s=%s:U=u%
SET s=%s:V=v%
SET s=%s:W=w%
SET s=%s:X=x%
SET s=%s:Y=y%
SET s=%s:Z=z%

ECHO.
ECHO MAC Address in CISCO Notation:
ECHO.
ECHO %s:~0,4%.%s:~4,4%.%s:~8,4%
ECHO.
ECHO 1. Restart
ECHO 2. Exit.
set /p "choose:=>> "
if %choose:%==1 goto start
if %choose:%=="" goto start
if %choose:%==2 goto exit

:e1
ECHO.
ECHO Bad character name
ECHO 1. Restart
ECHO 2. Exit.
ECHO.
set /p "choose:=>> "
if %choose:%==1 goto start
if %choose:%=="" goto start
if %choose:%==2 goto exit

:e2
ECHO.
ECHO Not enough characters
ECHO 1. Restart
ECHO 2. Exit.
ECHO.
set /p "choose:=>> "
if %choose:%==1 goto start
if %choose:%=="" goto start
if %choose:%==2 goto exit

:exit
exit
endlocal
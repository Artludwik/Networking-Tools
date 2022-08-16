@echo off
cls
:start
rem MAC Address into Cisco Notation
set /p "str=Paste or type here your MAC-Address and press "Enter": %*"

set str=%str:.=%
set str=%str::=%
set str=%str:-=%
set str=%str: =%
set str=%str:,=%
set str=%str:"=%
set str=%str:'=%
set str=%str:;=%
set str=%str:`=%
set str=%str:!=%
set str=%str:@=%
set str=%str:#=%
set str=%str:^=%
set str=%str:(=%
set str=%str:)=%
set str=%str:[=%
set str=%str:]=%
set str=%str:{=%
set str=%str:}=%
set str=%str:?=%
set str=%str:\=%
set str=%str:/=%
set str=%str:+=%
set str=%str:$=%
set str=%str:^=%
set str=%str:#=%
set str=%str:A=a%
set str=%str:B=b%
set str=%str:C=c%
set str=%str:D=d%
set str=%str:E=e%
set str=%str:F=f%
set str=%str:G=g%
set str=%str:H=h%
set str=%str:I=i%
set str=%str:J=j%
set str=%str:K=k%
set str=%str:L=l%
set str=%str:M=m%
set str=%str:N=n%
set str=%str:O=o%
set str=%str:Q=q%
set str=%str:R=r%
set str=%str:S=s%
set str=%str:T=t%
set str=%str:U=u%
set str=%str:V=v%
set str=%str:W=w%
set str=%str:Y=y%
set str=%str:Z=z%

echo MAC Address in CISCO Notation:
echo %str:~0,4%.%str:~4,4%.%str:~8,4%

set /p choice="Do you want to restart ? Press 'y' and enter for Yes: "
if not '%choice%'=='y' set choice=%choice:~0,1%
if '%choice%'=='y' goto start

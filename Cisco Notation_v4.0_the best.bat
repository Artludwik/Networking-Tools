@ECHO off

CLS

:start

REM MAC Address into Cisco Notation

CLS

SET  /p "s=Paste or type here your MAC-Address and press "Enter": %*"

ECHO %s%

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

ECHO MAC Address in CISCO Notation:
ECHO %s:~0,4%.%s:~4,4%.%s:~8,4%
SET /p choice="Do you want to restart? Press 'y' and enter for Yes: "
if not '%choice%'=='' SET choice=%choice:~0,1%
if '%choice%'=='y' goto start
@echo off
color 70
echo Narzedzie do sprawdzania polaczenia internetowego.
echo.
ping 127.0.0.1
TIMEOUT /T 3 > NUL
pathping google.com
TIMEOUT /T 3 > NUL
nslookup google.com
pause

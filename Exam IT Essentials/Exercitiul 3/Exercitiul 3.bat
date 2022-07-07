@echo off
echo Introdu IP adress
set /p IP=
echo Introdu Maska
set /p mask=
netsh interface ip set adress "Ethernet" static %IP% %mask%
pause
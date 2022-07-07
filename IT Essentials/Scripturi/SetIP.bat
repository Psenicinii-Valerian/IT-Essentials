@echo off
echo Introdu adresa:
set /p ip=
echo Introdu masca:
set /p mask=
echo Introdu DNS:
set /p dns=
netsh interface ip set adress "Ethernet" static %ip% %mask% %dns%
pause
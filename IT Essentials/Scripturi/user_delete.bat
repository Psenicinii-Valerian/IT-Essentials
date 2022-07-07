@echo off
echo Introduceti numele utilizatorului
set /p nume=
echo Introduceti parola
set /p parola=
net user /add %nume%  %parola%
pause
net user
@echo Introduceti numele utiizatorului pe care doriti sa stergeti
set /p del=
net user /delete %del%
pause
@echo off
echo Introduceti numele utilizatorului
set /p nume=
echo Introduceti parola
set /p parola=
net user /add %nume%  %parola%
pause
net user
echo Doriti sa se inroleze userul in grupuri de administratori? y/n
set /p raspuns=
if %raspuns%==y (net localgroup administrators /add %nume% && goto E ) else (net localgroup)
echo Selectati grupul in care doriti sa inrolati userul
set /p g=
net localgroup %g% %nume% /add
 :E
pause

 



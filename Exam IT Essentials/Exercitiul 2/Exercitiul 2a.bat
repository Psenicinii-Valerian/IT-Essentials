@echo off
echo Introduceti Nume Utilizator
set /p Nume=
echo Introduceti parola
set /p Parola= 
pause
net user /add %Nume% %Parola%
net localgroup guests %Nume%/add goto E
@echo off
echo Introduceti Nume Utilizator
set /p Nume=
echo Introduceti parola
set /p Pass= 
net user /add %Nume% %Pass%
pause
@echo Doriti sa adaugati in admin? Y or N
set/p aleg=
if(%aleg%==y)
net localgroup administrators %Nume%/add goto E
else
net localgroup
echo Indicati numele de rol in care doriti sa inrolati user-ul
set /p G
net localgroup %G% %Nume% /add 
:E
pause
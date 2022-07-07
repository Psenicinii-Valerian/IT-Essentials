@echo off
echo > Diskpart.scr list disk
echo >>Diskpart.scr exit
diskpart /s diskpart.scr
set /p Disk=Please enter the disk number: 
if "%Disk%"=="" goto :eof

echo >>Diskpart.scr Select disk %Disk%
echo >>Diskpart.scr clean
echo >>Diskpart.scr create part pri
echo >>Diskpart.scr select part 1
echo >>Diskpart.scr format fs=ntfs quick
echo >>Diskpart.scr active
echo >>Diskpart.scr exit

echo diskpart /s diskpart.scr
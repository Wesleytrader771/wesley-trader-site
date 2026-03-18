@echo off
cd /d "C:\projeto\meu-projeto"

git pull

set count=1

:loop
echo Commit numero %count% >> log.txt
echo %random% >> log.txt

git add .
git commit -m "commit real %count%"
git push

set /a count+=1

timeout /t 20 >nul

if %count% LEQ 30 goto loop
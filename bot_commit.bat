@echo off
cd /d "C:\projeto\meu-projeto"

git pull

set count=1

:loop

set filename=dev_%random%_%count%.txt
echo Conteudo %random% %time% > %filename%

echo Update %random% %date% %time% >> atividade.txt

git add .
git commit -m "real dev %date% %time%"
git push

set /a count+=1

:: tempo aleatório (2 a 5 minutos)
set /a tempo=(%random% %% 180) + 120
timeout /t %tempo% >nul

goto loop
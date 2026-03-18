@echo off
cd /d "C:\projeto\meu-projeto"

git pull

set count=1

:loop

:: cria arquivo novo (simula atividade real)
echo Commit %count% - %random% > arquivo_%count%.txt

:: também altera log (atividade contínua)
echo Atualizacao %random% >> log.txt

git add .
git commit -m "update real %count%"
git push

set /a count+=1

:: tempo aleatório entre commits (30 a 90 segundos)
set /a tempo=(%random% %% 60) + 30
timeout /t %tempo% >nul

:: limite de commits
if %count% LEQ 20 goto loop
@echo off
cd /d C:\projeto\meu-projeto

git pull

for /l %%x in (1, 1, 50) do (
echo update %%x >> log.txt
git add .
git commit -m "auto commit %%x"
git push
)
@echo off
set BACKUP_NAME=backup_final.sql
echo Iniciando backup desde el nodo db-master...

docker exec db-master mysqldump -u root -pFamiliame260122 sistema_trailers_springboot > %BACKUP_NAME%

echo.
echo Backup finalizado con éxito.
echo El archivo se llama: %BACKUP_NAME%
pause
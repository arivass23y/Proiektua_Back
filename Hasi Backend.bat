@echo off
echo Iniciando contenedores del back...

docker start MySQL_Pelu
docker start SpringBoot_Pelu

echo Mostrando logs del Spring Boot...
docker logs -f SpringBoot_Pelu

pause

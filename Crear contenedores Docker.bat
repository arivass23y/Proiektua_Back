@echo off
cd E2Back

echo Limpiando y construyendo el proyecto con Maven...
call mvn clean package -DskipTests

cd ..

echo Iniciando el backend con Docker...
docker-compose up --build

pause

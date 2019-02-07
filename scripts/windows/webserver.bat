@echo off

rem ====================
rem Runs the webserver and mounts 
rem ====================
setlocal
call "%~dp0abspath.bat" "%~dp0..\.."
docker run -d -v "%AbsPath%/dags":/usr/local/airflow/dags -p 8080:8080 puckel/docker-airflow webserver
endlocal
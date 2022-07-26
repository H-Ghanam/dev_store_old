@echo off

echo.
echo.
echo.
echo Stoping Store API ... 
echo ---------------------------------------


cd %~dp0

"node" ".\src\service-uninstall.js"

echo.
echo.
echo.
echo Store API is Offline !  
echo ---------------------------------------

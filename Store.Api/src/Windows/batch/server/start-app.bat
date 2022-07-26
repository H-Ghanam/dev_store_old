@echo off

echo.
echo Modifying required tables
echo ---------------------------------------


"%~dp0bin\mysql" --defaults-file="%~dp0src\conf" < "%~dp0src\alter-tables.sql"


echo.
echo running app
echo ---------------------------------------


src\elevate64 C:\SAHL\Program\Sahl.exe


echo.
echo.
echo.
echo Ready !?
echo ---------------------------------------
echo ---------------------------------------
pause

"%~dp0bin\mysql" --defaults-file="%~dp0src\conf" < "%~dp0src\restore-tables.sql"

echo.
echo.
echo.
echo patching DONE!
echo ---------------------------------------



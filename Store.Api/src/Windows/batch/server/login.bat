@echo off

echo.
echo.
echo.
echo Log in to mysql terminal with root cred
echo ---------------------------------------


@REM "%~dp0bin\mysql" --defaults-file="%~dp0src\conf"
cd %~dp0
start cmd /k "bin\mysql --defaults-file=src\conf"


pause


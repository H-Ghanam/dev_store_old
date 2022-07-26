@echo off



echo.
echo.
echo.
echo.

set mysql_dir=%~dp0data\mysql\

set users_dir=%~dp0server\src\users\*.*

set mysql_service_name=MySQL_SAHL


echo Stopping MySQL service
echo --------
net stop %mysql_service_name%
echo.
echo.
echo.
echo.



del /f %mysql_dir%user.*

xcopy "%users_dir%" "%mysql_dir%" /K /D /H /Y



echo Starting MySQL service
echo --------
net start %mysql_service_name% 
echo.
echo.
echo.
echo.







echo.
echo.
echo.
echo Log in to mysql as admin
echo ---------------------------------------
echo.
echo.
echo.
echo.

@echo off

@REM "%~dp0bin\mysql" --defaults-file="%~dp0server\src\conf"
@REM cd %~dp0
@REM start cmd /k "server\bin\mysql --defaults-file=server\src\conf"

@REM SET PASSWORD FOR root@localhost=PASSWORD(''); -- MySQL 5.x
@REM SET PASSWORD FOR root@localhost=''; -- MySQL 8.x


exit

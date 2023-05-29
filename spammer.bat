@echo off

title webhook fucker

:setup                                                                                                                 
set /p url=webhook url: 
cls
set /p msg=message: 
cls

title console

:loop
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"%msg%\"}" %url%
echo [[31;255;70;70;1m+[30;0;0;0;0m[37;255;70;70;1m[30;0;0;0;0m]: %msg%
goto :loop

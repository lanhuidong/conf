@sc query mysql56
@echo off

SET Choice=
SET /P Choice=�Ƿ���Ҫɾ��MySql����:
IF NOT "%Choice%"=="" SET Choice=%Choice:~0,1%
IF "%Choice%"=="" GOTO NOINSTALL
IF "%Choice%"=="n" GOTO NOINSTALL

net stop mysql56

sc delete mysql56

:NOINSTALL
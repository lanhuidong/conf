@sc query mysql56
@echo off

echo �������ʾMysql������Ϣ���벻Ҫ��װ��ֱ�ӻس��˳�
@echo.
SET Choice=
SET /P Choice=�Ƿ���Ҫ��װMySql����:
IF NOT "%Choice%"=="" SET Choice=%Choice:~0,1%
IF "%Choice%"=="" GOTO NOINSTALL
IF "%Choice%"=="n" GOTO NOINSTALL

@copy my.ini.temp my.ini
wmic ENVIRONMENT where "name='path' and username='<system>'" set VariableValue="%path%;%CD%\bin;"
@sc create mysql56 binPath= "\"%CD%\bin\mysqld\" --defaults-file=\"%CD%\my.ini\" mysql56" start= auto

@echo #Path to installation directory. All paths are usually resolved relative to this.
@echo basedir="%CD%\">>my.ini

@echo #Path to the database root
@echo datadir="%CD%\data\">>my.ini

@echo innodb_data_home_dir="%CD%\data\">>my.ini

@net start mysql56
@echo ��ֱ�Ӱ��س���
@mysql -uroot -p <createuser.sql
@ECHO ���
:NOINSTALL
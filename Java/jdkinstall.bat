@echo off
cls
color 0f

set installpath=C:\Java\jdk1.7.0_67

echo ---------------------------------------
echo *                                     *
echo *   һ����װJDK��%installpath%  *
echo *                                     *
echo *  �����밴��������˳���ֱ�ӹرմ��� *
echo *                                     *
echo ---------------------------------------
pause



IF EXIST %installpath%\bin\java.exe (
  echo JDK�Ѱ�װ
  goto END
)

echo ���ڰ�װJDK���벻Ҫ�رմ���
echo ��װ������Ҫ������ʱ�䣬���Ժ�
start /WAIT jdk-7u67-windows-x64.exe /s /norestart /v /qn INSTALLDIR=%installpath%
echo ��װ�ɹ�

:END
%installpath%\bin\java.exe -version
pause
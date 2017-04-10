@echo off
cls
color 0f

set installpath=C:\Java\jdk1.7.0_67

echo ---------------------------------------
echo *                                     *
echo *   一键安装JDK到%installpath%  *
echo *                                     *
echo *  继续请按任意键，退出请直接关闭窗口 *
echo *                                     *
echo ---------------------------------------
pause



IF EXIST %installpath%\bin\java.exe (
  echo JDK已安装
  goto END
)

echo 正在安装JDK，请不要关闭窗口
echo 安装过程需要几分钟时间，请稍后
start /WAIT jdk-7u67-windows-x64.exe /s /norestart /v /qn INSTALLDIR=%installpath%
echo 安装成功

:END
%installpath%\bin\java.exe -version
pause
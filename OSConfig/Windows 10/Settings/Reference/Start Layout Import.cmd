@echo off

::	https://technet.microsoft.com/en-us/library/mt592638(v=vs.85).aspx

Set Arch=x64
If /I %Processor_Architecture%==x86 Set Arch=x86

echo powershell -ExecutionPolicy Bypass Import-StartLayout -LayoutPath '%~dp0LayoutModification%Arch%.xml' -MountPath %SystemDrive%\
powershell -ExecutionPolicy Bypass Import-StartLayout -LayoutPath '%~dp0LayoutModification%Arch%.xml' -MountPath %SystemDrive%\
pause
set FlashPath="C:\Program Files (x86)\Macromedia\Flash 8\Flash.exe"
set ExportScriptPath="%~dp0\Export.jsfl"
set ExportScriptParams="%~dp0\ExportParams.txt"
@echo off
echo %1 %2> %ExportScriptParams%
%FlashPath% %ExportScriptPath%

"D:\progs\ruffle\ruffle.exe" %2

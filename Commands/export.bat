set FlashPath="%FlashDir%\Flash.exe"
set ExportScriptPath="%~dp0\Export.jsfl"
set ExportScriptParams="%~dp0\ExportParams.txt"
@echo off
echo %1 %2> %ExportScriptParams%
%FlashPath% %ExportScriptPath%

"%RuffleDir%\ruffle.exe" %2

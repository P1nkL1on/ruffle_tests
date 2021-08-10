set FlashPath=%1
set RufflePath=%2
set FlaPath=%3
set SwfPath=%4
set ExportScriptPath="%~dp0\Export.jsfl"
set ExportScriptParams="%~dp0\ExportParams.txt"
del %ExportScriptParams%
del %SwfPath%
@echo off
echo %FlaPath% %SwfPath%> %ExportScriptParams%
%FlashPath% %ExportScriptPath%
%RufflePath% %SwfPath%

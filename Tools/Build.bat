set FlashPath=%1
set ExportScriptParams=%2
set FlaPath=%3
set SwfPath=%4
set ExportScriptPath="%~dp0\Export.jsfl"
del %ExportScriptParams%
del %SwfPath%
@echo off
echo %FlaPath% %SwfPath%> %ExportScriptParams%
%FlashPath% %ExportScriptPath%

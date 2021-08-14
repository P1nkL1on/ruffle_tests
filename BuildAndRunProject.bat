set ProjectName=Prototype
set FlashPath="C:\Program Files (x86)\Macromedia\Flash 8\Flash.exe"
set TmpParamsPath="C:\Users\Leonid\AppData\Local\Macromedia\Flash 8\en\Configuration\Commands\ExportParams.txt"
set RufflePath="D:\progs\ruffle\ruffle.exe"
set SwfPath=%CD%\%ProjectName%.swf
CALL "Tools\Build.bat" %FlashPath% %TmpParamsPath% %CD%\%ProjectName%.fla %SwfPath%
CALL "Tools\Run.bat" %RufflePath% %SwfPath%

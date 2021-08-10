set ProjectName="Project"
set FlashPath="C:\Program Files (x86)\Macromedia\Flash 8\Flash.exe"
set RufflePath="D:\progs\ruffle\ruffle.exe"
CALL "Tools\BuildAndRun.bat" %FlashPath% %RufflePath% %CD%\\%ProjectName%.fla %CD%\\%ProjectName%.swf

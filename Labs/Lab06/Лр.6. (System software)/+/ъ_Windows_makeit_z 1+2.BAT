@echo off
cls
if exist *.exe del *.exe

\MASM32\BIN\Link.exe /nologo /SECTION:.text,w /SUBSYSTEM:windows 01.Windows.obj 02.Windows.obj
pause
rem if exist *.obj del *.obj


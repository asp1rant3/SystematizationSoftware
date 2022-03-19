@echo off
cls
if exist *.exe del *.exe
\MASM32\BIN\Ml.exe /nologo /c /coff  /Fo 01.Windows.obj 01.Windows.asm 
pause
rem \MASM32\BIN\Link.exe /nologo /SECTION:.text,w /SUBSYSTEM:windows 01.Windows.obj
rempause
rem if exist *.obj del *.obj


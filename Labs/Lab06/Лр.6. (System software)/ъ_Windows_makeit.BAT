@echo off
cls
if exist *.exe del *.exe
\MASM32\BIN\Ml.exe /nologo /c /coff  /Fo 1.Windows.obj 1.Windows.asm 
pause
\MASM32\BIN\Link.exe /nologo /SECTION:.text,w /SUBSYSTEM:windows 1.Windows.obj
pause
if exist *.obj del *.obj

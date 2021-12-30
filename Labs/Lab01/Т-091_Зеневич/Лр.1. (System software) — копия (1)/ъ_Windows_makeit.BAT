@echo off
cls
if exist *.exe del *.exe
C:\masm32\bin\Ml.exe /nologo /c /coff  /Fo 1.Windows.obj 1.Windows.asm 
pause
C:\masm32\bin\Link.exe /nologo /SECTION:.text,w /SUBSYSTEM:windows 1.Windows.obj
pause
if exist *.obj del *.obj



@echo off
cls
if exist *.exe del *.exe
\MASM32\BIN\Ml.exe /nologo /c /coff  /Fo 1.Console.obj 1.Console.asm 
pause
\MASM32\BIN\Link.exe /nologo /SECTION:.text,w /SUBSYSTEM:console 1.Console.obj
pause
if exist *.obj del *.obj


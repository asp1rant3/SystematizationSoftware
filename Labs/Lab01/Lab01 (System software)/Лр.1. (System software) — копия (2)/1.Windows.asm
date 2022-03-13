; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««

      .486                                      ; create 32 bit code
      .model flat, stdcall                      ; 32 bit memory model
      option casemap :none                      ; case sensitive 

;     include files
;     ~~~~~~~~~~~~~
      include C:\masm32\include\windows.inc       ; main windows include file
      include C:\masm32\include\masm32.inc        ; masm32 library include

    ; -------------------------
    ; Windows API include files
    ; -------------------------
       include C:\masm32\include\gdi32.inc
      include C:\masm32\include\user32.inc
      include C:\masm32\include\kernel32.inc
      include C:\masm32\include\Comctl32.inc
      include C:\masm32\include\comdlg32.inc
      include C:\masm32\include\shell32.inc
      include C:\masm32\include\oleaut32.inc
      include C:\masm32\include\ole32.inc
      include C:\masm32\include\msvcrt.inc

      include C:\masm32\include\dialogs.inc       ; macro file for dialogs
      include C:\masm32\macros\macros.asm         ; masm32 macro file

;     libraries
;     ~~~~~~~~~
      includelib C:\masm32\lib\masm32.lib         ; masm32 static library

    ; ------------------------------------------
    ; import libraries for Windows API functions
    ; ------------------------------------------
      includelib C:\masm32\lib\gdi32.lib
      includelib C:\masm32\lib\user32.lib
      includelib C:\masm32\lib\kernel32.lib
      includelib C:\masm32\lib\Comctl32.lib
      includelib C:\masm32\lib\comdlg32.lib
      includelib C:\masm32\lib\shell32.lib
      includelib C:\masm32\lib\oleaut32.lib
      includelib C:\masm32\lib\ole32.lib
      includelib C:\masm32\lib\msvcrt.lib
; «««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««

; ************************************************************************
;    include C:\masm32\include\masm32rt.inc
; ************************************************************************

.data?
Result	dd	?
lpBuf1	db	1024 dup(?)	; temp Buffers 	

.data
buffer_for_string db 10 dup(0)
title_string db "Результат:  ",0
;	szformat db "%u",0Dh,0Ah,0		; изменяем формат вывода на dec
	szformat db "%d",0Dh,0Ah,0		; изменяем формат вывода на hex


.code
start:
; ************************************************************************
main proc
	LOCAL var_00		:DWORD
	LOCAL var_01		:DWORD
	

; Затем здесь(ниже) запишите решение. 
; Записи возможны только до начала следующей линии решетки ...
; ###########################################################################    
xor eax,eax
add eax, +678
imul eax, -896












; Меняем имя регистра на имя в котором находится ваш результат
mov Result,eax

; ###########################################################################
	push Result
	push offset szformat
	push offset buffer_for_string
	call wsprintf

	push 4;MB_OK
	push offset title_string
	push offset buffer_for_string
	push 0
	call MessageBox

	push 0
	call ExitProcess
	
main endp
; ************************************************************************
end start


Comment ^
Каркас программы

.386
.MODEL Flat, STDCALL
.DATA
<Ваша инициализиpуемые данные>
......
.DATA?
<Ваши не инициализиpуемые данные>
......
.CONST
<Ваши константы>
......
.CODE
<метка>
<Ваш код>

.....

end <метка>
^


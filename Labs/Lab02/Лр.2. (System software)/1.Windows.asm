    include \masm32\include\masm32rt.inc

.data?
buffer_for_string db 10 dup(?)

.data
title_string db "Результат:  ",0	;   [0] - конец строки
szformat db "%d",0Dh,0Ah,0		;   [%d]- формат вывода десятичный, [0Dh,0Ah] - код клавиши 'Enter'


.code
start:
; ************************************************************************
main proc
;	LOCAL var_00		:DWORD
;	LOCAL var_01		:DWORD





	push eax
	push offset szformat
	push offset buffer_for_string
	call wsprintf

	push MB_OK
	push offset title_string
	push offset buffer_for_string
	push 0
	call MessageBox

	push 0
	call ExitProcess
	
main endp
end start


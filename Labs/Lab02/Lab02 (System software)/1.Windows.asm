    include \masm32\include\masm32rt.inc

.data?
buffer_for_string db 10 dup(?)

.data
title_string db "���������:  ",0	;   [0] - ����� ������
szformat db "%d",0Dh,0Ah,0		;   [%d]- ������ ������ ����������, [0Dh,0Ah] - ��� ������� 'Enter'


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


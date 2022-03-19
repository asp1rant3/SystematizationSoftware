    include \masm32\include\masm32rt.inc
	
.data?
	lpbuffer_output		db	64 dup(?)
.data
	sztitle			db	"Результат:  ",0

	szformat	db	0Dh, 0Ah, "%lu", 0Dh, 0Ah, 0

.code

start:

main proc
call output_message
ret
main endp

output_message proc

	push eax
	push OFFSET szformat
	push OFFSET lpbuffer_output
	call wsprintf

	push MB_OK
	push OFFSET sztitle
	push OFFSET lpbuffer_output
	push 0
	call MessageBox

	push 0
	call ExitProcess
	ret
output_message endp

end start 


; ������� 5. �������� ���������� ����� ����� ������� ������ (������ 2)

    include \masm32\include\masm32rt.inc

; ���������� ������� ��������

	public	PutChar,PutCharEnd

.data?

; ���������� ������� ����������

	EXTRN	buffer:	ABS 		; ��������� ���: 
					; ABS (����������, ��� ���������)
.data
	tmpSI	dd	0

.code					; ������ ������ ����

PutChar	proc			; ���������� ���������

	cld
	mov 	esi,10000
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'�'
	inc	esi
	mov	BYTE PTR buffer[esi],'!'
	inc	esi
	mov	tmpSI,esi	
	ret				; ������� �� ���������
	
PutChar	endp				; ����� ���������

PutCharEnd	proc

	mov	esi,tmpSI
	mov	BYTE PTR buffer[esi],0	; ����-����������� ������
	ret
	
PutCharEnd	endp


end


; Ћистинг 5. ѕередача аргументов через общую область пам€ти (модуль 2)

    include \masm32\include\masm32rt.inc

; объ€вление внешних процедур

	public	PutChar,PutCharEnd

.data?

; объ€вление внешней переменной

	EXTRN	buffer:	ABS 		; назначаем тип: 
					; ABS (абсолютный, или константа)
.data
	tmpSI	dd	0

.code					; начало секции кода

PutChar	proc			; обь€вление процедуры

	cld
	mov 	esi,10000
	mov	BYTE PTR buffer[esi],'–'
	inc	esi
	mov	BYTE PTR buffer[esi],'а'
	inc	esi
	mov	BYTE PTR buffer[esi],'б'
	inc	esi
	mov	BYTE PTR buffer[esi],'о'
	inc	esi
	mov	BYTE PTR buffer[esi],'т'
	inc	esi
	mov	BYTE PTR buffer[esi],'а'
	inc	esi
	mov	BYTE PTR buffer[esi],'е'
	inc	esi
	mov	BYTE PTR buffer[esi],'т'
	inc	esi
	mov	BYTE PTR buffer[esi],'!'
	inc	esi
	mov	tmpSI,esi	
	ret				; возврат из процедуры
	
PutChar	endp				; конец процедуры

PutCharEnd	proc

	mov	esi,tmpSI
	mov	BYTE PTR buffer[esi],0	; нуль-терминируем строку
	ret
	
PutCharEnd	endp


end


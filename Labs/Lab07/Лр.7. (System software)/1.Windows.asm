; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

      .486                                      ; create 32 bit code
      .model flat, stdcall                      ; 32 bit memory model
      option casemap :none                      ; case sensitive 

;     include files
;     ~~~~~~~~~~~~~
      include \masm32\include\windows.inc       ; main windows include file
      include \masm32\include\masm32.inc        ; masm32 library include

    ; -------------------------
    ; Windows API include files
    ; -------------------------
      include \masm32\include\gdi32.inc
      include \masm32\include\user32.inc
      include \masm32\include\kernel32.inc
      include \masm32\include\Comctl32.inc
      include \masm32\include\comdlg32.inc
      include \masm32\include\shell32.inc
      include \masm32\include\oleaut32.inc
      include \masm32\include\ole32.inc
      include \masm32\include\msvcrt.inc

      include \masm32\include\dialogs.inc       ; macro file for dialogs
      include \masm32\macros\macros.asm         ; masm32 macro file

;     libraries
;     ~~~~~~~~~
      includelib \masm32\lib\masm32.lib         ; masm32 static library

    ; ------------------------------------------
    ; import libraries for Windows API functions
    ; ------------------------------------------
      includelib \masm32\lib\gdi32.lib
      includelib \masm32\lib\user32.lib
      includelib \masm32\lib\kernel32.lib
      includelib \masm32\lib\Comctl32.lib
      includelib \masm32\lib\comdlg32.lib
      includelib \masm32\lib\shell32.lib
      includelib \masm32\lib\oleaut32.lib
      includelib \masm32\lib\ole32.lib
      includelib \masm32\lib\msvcrt.lib

; ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл

; ************************************************************************
;    include \masm32\include\masm32rt.inc
; ************************************************************************

.data?
	lpbuffer_output		db	64 dup(?)
.data
	sztitle			db	"╨хчєы№ЄрЄ:  ",0

	szformat	db	0Dh, 0Ah, "%lu", 0Dh, 0Ah, 0

	n   dd 5		; ўшёыю, фы  ъ-ую т√ўшёы хЄё  ЇръЄюЁшры
	res dd ?		; чфхё№ сєфхЄ Ёхчєы№ЄрЄ
.code

factor_calc proc
	cmp ecx,1	; хёыш N<=1
	jg rec
	mov eax,1	; эх ЁхъєЁёштэр  тхЄт№
	xor edx,edx	; тючтЁр∙рхь Ёхчєы№ЄрЄ
	ret		; тючтЁр∙рхьё 
rec:			; ЁхъєЁёштэр  тхЄт№
	push ecx		; ёюїЁрэ хь т ёЄхъх Е4 3 2
	dec ecx		; єьхэ№°рхь NЕ3 2 1
	call factor_calc	; ╨хъєЁёштэ√щ т√чют
	pop ecx		; ётюЁрўштрэшх					(00029)
	mul ecx		; ЁхъєЁёшш					(00030)
	ret
factor_calc endp 

factor proc uses eax edx ecx
	mov ecx, n
	call factor_calc	; т√чют ЁхъєЁёштэющ ЇєэъЎшш
	mov res, eax	; ёюїЁрэ хь Ёхчєы№ЄрЄ				(00037)
	ret
factor endp

start:
call factor

output_message proc

	push res
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


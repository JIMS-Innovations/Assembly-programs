; @file: hello_world.asm
; @author: Jesutofunmi Kupoluyi
; @brief: This is my first assembly program!
; @date: 14 March, 2023

;Data section
section .data
	hello: db "Hello World!", 10 	; String to print
	helloLen: equ $-hello			; Length of string

;Text section
section .text
	global _start					; Entry point for linker

	_start:
		mov	rax,1					; System write
		mov	rdi,1					; stdout
		mov	rsi,hello				; Message to write
		mov	rdx,helloLen			; Message length
		syscall						; Call kernel

		; End program
		mov	rax,60					; system exit
		mov	rdi,0					; Error code 0 (success)
		syscall						; Call kernel

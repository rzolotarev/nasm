; start asm

global _start
extern main
section .text
_start:
	mov ecx, [esp] ; argc
	mov eax, esp
	add eax, 4 ; start of ptr array
	push eax
	push ecx
	call main
	mov ebx, eax
	mov eax, 1
	int 80h

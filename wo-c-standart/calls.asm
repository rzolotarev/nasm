; calls.asm
global sys_read
global sys_write
global sys_error_no

section .text
generic_syscall_3:
	push ebp
	mov ebp, esp
	push ebx
	mov ebx, [ebp + 8]
	mov ecx, [ebp + 12]	
	mov edx, [ebp + 16]		
	int 80h
	mov edx, eax
	and edx, 0fffff000h
	cmp edx, 0fffff000h
	jnz .okay
	mov [sys_error_no], eax
	mov eax, -1
.okay:	
	mov esp, ebp
	pop ebp
	ret

sys_read:
	mov eax, 3
	jmp generic_syscall_3		
sys_write:
	mov eax, 4
	jmp generic_syscall_3

section .bss
sys_error_no resd 1

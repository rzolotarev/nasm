bits 32
; at the beginning

push ebp ;save the caller's ebp
mov ebp, esp ;update ebp to work with parameteres and local variables
sub esp, 16 ;if there is 4 local variables



; before returning
mov esp, ebp ; to clean stack
pop ebp ;restore the caller's ebp
ret



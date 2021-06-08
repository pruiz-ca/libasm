extern	___error

section	.text
	global	_ft_read

_ft_read:
		mov		rax, 0x2000003
		syscall
		jc		_error
		ret

_error:
		push	rax
		call	___error
		pop		qword[rax]
		mov		rax, -1
		ret

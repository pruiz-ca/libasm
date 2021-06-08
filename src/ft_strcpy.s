section	.text
	global	_ft_strcpy

_ft_strcpy:
		push	rdi
		jmp		_checknull

_checknull:
		cmp		byte[rsi], 0
		jnz		_copy
		pop		rax
		mov		byte[rdi], 0
		ret

_copy:
		movsb
		jmp		_checknull

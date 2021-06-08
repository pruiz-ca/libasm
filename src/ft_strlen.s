section	.text
	global	_ft_strlen

_ft_strlen:
		mov		rax, 0
		jmp		_checknull

_checknull:
		cmp		byte[rdi], 0
		jnz		_loop
		ret

_loop:
		inc		rax
		inc		rdi
		jmp		_checknull

section	.text
	global	_ft_strcmp

_ft_strcmp:
		mov		rax, 0
		mov		rbx, 0
		jmp		_compare

_compare:
		mov		al, byte[rdi]
		mov		bl, byte[rsi]
		cmp		al, 0
		je		_exit
		cmp		bl, 0
		je		_exit
		cmp		al, bl
		jne		_exit
		inc		rdi
		inc		rsi
		jmp		_compare

_exit:
		sub		rax, rbx
		ret

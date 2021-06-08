extern	_malloc

section	.text
	global	_ft_list_push_front

_ft_list_push_front:
		push	rdi
		push	rsi
		mov		rdi, 16
		call	_malloc
		cmp		rax, 0
		je		_exit
		pop		rsi
		pop		rdi
		mov		[rax], rsi
		mov		rbx, [rdi]
		mov		[rax + 8], rbx
		mov		[rdi], rax

_exit:
		ret

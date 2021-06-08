section	.text
	global	_ft_list_size

_ft_list_size:
		mov		rax, 0
		jmp		_iterate_list

_iterate_list:
		cmp		rdi, 0
		jz		_exit
		mov		rdi, [rdi + 8]
		inc		rax
		jmp		_iterate_list

_exit:
		ret

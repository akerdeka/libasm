section .text
global _ft_strcpy

_ft_strcpy:
	mov rax, 0
	jmp copy

copy:
	mov rax, rdi

done:
	ret
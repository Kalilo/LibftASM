; nasm -f macho64 ex01.s -o ex01.o && ld ex01.o -macosx_version_min 10.8 -lSystem && ./a.out && rm a.out
section .data
hello:
	.string db "Hello Worlds!", 10
	.len equ $ - hello.string

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [rel hello.string]
	call _printf
	leave
	ret
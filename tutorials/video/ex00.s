; nasm -f macho64 ex00.s -o ex00.o && ld ex00.o -macosx_version_min 10.8 -lSystem && ./a.out && rm a.out

section .text
	global start
	global _main

start:
	call _main
	ret

_main:
	ret
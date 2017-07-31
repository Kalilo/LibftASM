section .text
	global start
	global _main
; follow link on the link.txt file to explain what each section does
start:
	call _main
	ret

_main:
	ret

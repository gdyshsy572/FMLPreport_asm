global _main
extern _GetStdHandle@4
extern _WriteConsoleA@20
extern _ExitProcess@4

section .text:
_main:
	push -11
	call _GetStdHandle@4

	push 0
	push 0
	push 6
	push msg
	push eax
	call _WriteConsoleA@20

	push 0
	call _ExitProcess@4

section .data
msg: db 'hello', 10

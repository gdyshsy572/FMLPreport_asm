global _wWinMain@16
extern _RegisterClassExA@4
extern _CreateWindowExA@48
extern _ShowWindow@8

section .text
_wWinMain@16:
	push ebp
	mov ebp, esp
	push wnd_class
	call _RegisterClassExA@4

	push 0
	push [ebp+8]
	push 0
	push 0
	push 100
	push 100
	push 0
	push 0
	push 0x00CF0000
	push title
	push class_name
	push 0
	call _CreateWindowExA@48

	push [ebp+16]
	push eax
	call _ShowWindow@8

	ret 16
section .data
title: db 'this is title', 0
class_name: db 'hello', 0
wnd_class:
	.cbsize dd 48
	.style dd 3
	.lpfnWndProc dd 0
	.cbClsExtra dd 0
	.cbWndExtra dd 0
	.hInstance dd 0
	.hIcon dd 0
	.hCursor dd 0
	.hbrBackground dd 5
	.lpszMenuName dd 0
	.lpszClassName dd class_name
	.hIconSm dd 0

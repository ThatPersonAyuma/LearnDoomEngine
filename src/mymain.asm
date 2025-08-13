	.file	"r_main.c"
	.intel_syntax noprefix
	.text
	.globl	CreateBSPTree
	.def	CreateBSPTree;	.scl	2;	.type	32;	.endef
	.seh_proc	CreateBSPTree
CreateBSPTree:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 72
	.seh_stackalloc	72
	lea	rbp, 64[rsp]
	.seh_setframe	rbp, 64
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	ecx, 40
	call	malloc
	mov	QWORD PTR -8[rbp], rax
	mov	rcx, QWORD PTR -8[rbp]
	mov	rax, QWORD PTR 40[rbp]
	mov	rdx, QWORD PTR 8[rax]
	mov	rax, QWORD PTR [rax]
	mov	QWORD PTR 4[rcx], rax
	mov	QWORD PTR 12[rcx], rdx
	mov	ecx, 40
	call	malloc
	mov	QWORD PTR -16[rbp], rax
	mov	rcx, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 40[rbp]
	mov	rdx, QWORD PTR 24[rax]
	mov	rax, QWORD PTR 16[rax]
	mov	QWORD PTR 4[rcx], rax
	mov	QWORD PTR 12[rcx], rdx
	mov	ecx, 40
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR [rax], 67
	mov	ecx, 40
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR -16[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	BYTE PTR [rax], 68
	mov	ecx, 40
	call	malloc
	mov	QWORD PTR -24[rbp], rax
	mov	rcx, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 40[rbp]
	mov	rdx, QWORD PTR 40[rax]
	mov	rax, QWORD PTR 32[rax]
	mov	QWORD PTR 4[rcx], rax
	mov	QWORD PTR 12[rcx], rdx
	mov	ecx, 40
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 24[rax]
	mov	BYTE PTR [rax], 65
	mov	ecx, 40
	call	malloc
	mov	rdx, rax
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR -24[rbp]
	mov	rax, QWORD PTR 32[rax]
	mov	BYTE PTR [rax], 66
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -16[rbp]
	mov	QWORD PTR 24[rax], rdx
	mov	rax, QWORD PTR -8[rbp]
	mov	rdx, QWORD PTR -24[rbp]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rcx, QWORD PTR [rdx]
	mov	rbx, QWORD PTR 8[rdx]
	mov	QWORD PTR [rax], rcx
	mov	QWORD PTR 8[rax], rbx
	mov	rcx, QWORD PTR 16[rdx]
	mov	rbx, QWORD PTR 24[rdx]
	mov	QWORD PTR 16[rax], rcx
	mov	QWORD PTR 24[rax], rbx
	mov	rdx, QWORD PTR 32[rdx]
	mov	QWORD PTR 32[rax], rdx
	mov	rax, QWORD PTR 32[rbp]
	add	rsp, 72
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	add	rsp, -128
	.seh_stackalloc	128
	.seh_endprologue
	call	__main
	mov	DWORD PTR -48[rbp], 0
	mov	DWORD PTR -44[rbp], 10
	mov	DWORD PTR -40[rbp], 30
	mov	DWORD PTR -36[rbp], 10
	mov	DWORD PTR -32[rbp], 15
	mov	DWORD PTR -28[rbp], 10
	mov	DWORD PTR -24[rbp], 15
	mov	DWORD PTR -20[rbp], 0
	mov	DWORD PTR -16[rbp], 15
	mov	DWORD PTR -12[rbp], 10
	mov	DWORD PTR -8[rbp], 10
	mov	DWORD PTR -4[rbp], 20
	mov	DWORD PTR -56[rbp], 5
	mov	DWORD PTR -52[rbp], 15
	lea	rax, -96[rbp]
	lea	rdx, -48[rbp]
	mov	r8d, 3
	mov	rcx, rax
	call	CreateBSPTree
	mov	eax, 0
	sub	rsp, -128
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.ident	"GCC: (Rev6, Built by MSYS2 project) 15.1.0"
	.def	malloc;	.scl	2;	.type	32;	.endef

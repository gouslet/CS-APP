	.file	"mstore.c"
	.intel_syntax noprefix
	.text
	.globl	multstore
	.def	multstore;	.scl	2;	.type	32;	.endef
	.seh_proc	multstore
multstore:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, r8
	call	mult2
	mov	DWORD PTR [rbx], eax
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 7.1.0"
	.def	mult2;	.scl	2;	.type	32;	.endef

	.file	"echo.c"
	.text
	.globl	gets
	.def	gets;	.scl	2;	.type	32;	.endef
	.seh_proc	gets
gets:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rcx, %rbx
.L3:
	call	getchar
	cmpl	$10, %eax
	je	.L2
	movb	$1, (%rbx)
	leaq	1(%rbx), %rbx
	jmp	.L3
.L2:
	movb	$0, (%rbx)
	movq	%rsi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.globl	echo
	.def	echo;	.scl	2;	.type	32;	.endef
	.seh_proc	echo
echo:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	leaq	40(%rsp), %rbx
	movq	%rbx, %rcx
	call	gets
	movq	%rbx, %rcx
	call	puts
	nop
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (Rev2, Built by MSYS2 project) 7.1.0"
	.def	getchar;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef

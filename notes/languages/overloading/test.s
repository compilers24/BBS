	.file	"test.c"
	.text
	.section	.text._ZNK3Foo2FnEi,"axG",@progbits,_ZNK3Foo2FnEi,comdat
	.align 2
	.weak	_ZNK3Foo2FnEi
	.type	_ZNK3Foo2FnEi, @function
_ZNK3Foo2FnEi:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$42, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_ZNK3Foo2FnEi, .-_ZNK3Foo2FnEi
	.section	.text._ZNK3Foo2FnEv,"axG",@progbits,_ZNK3Foo2FnEv,comdat
	.align 2
	.weak	_ZNK3Foo2FnEv
	.type	_ZNK3Foo2FnEv, @function
_ZNK3Foo2FnEv:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$24, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZNK3Foo2FnEv, .-_ZNK3Foo2FnEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK3Foo2FnEv
	movl	%eax, %ebx
	leaq	-25(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNK3Foo2FnEi
	addl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L7
	call	__stack_chk_fail@PLT
.L7:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Gentoo 11.2.0 p1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits

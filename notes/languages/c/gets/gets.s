	.file	"gets.c"
	.text
	.section	.rodata
.LC0:
	.string	"\n Enter the password : "
.LC1:
	.string	"password"
.LC2:
	.string	"\n Wrong Password "
.LC3:
	.string	"\n Correct Password "
	.align 8
.LC4:
	.string	"\n Root privileges given to the user "
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-14(%rbp), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	gets@PLT
	leaq	-14(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L3
.L2:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, -4(%rbp)
.L3:
	cmpl	$0, -4(%rbp)
	je	.L4
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L4:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Gentoo 11.2.1_p20220115 p4) 11.2.1 20220115"
	.section	.note.GNU-stack,"",@progbits

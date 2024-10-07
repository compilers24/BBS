	.file	"gets.c"
# GNU C17 (Gentoo 11.1.0 p1) version 11.1.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fno-dwarf2-cfi-asm -fno-stack-protector
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
	pushq	%rbp	#
.LCFI0:
	movq	%rsp, %rbp	#,
.LCFI1:
	subq	$16, %rsp	#,
# gets.c:7:     int pass = 0;
	movl	$0, -4(%rbp)	#, pass
# gets.c:9:     printf("\n Enter the password : \n");
	leaq	.LC0(%rip), %rax	#, tmp85
	movq	%rax, %rdi	# tmp85,
	call	puts@PLT	#
# gets.c:10:     gets(buff);
	leaq	-14(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	movl	$0, %eax	#,
	call	gets@PLT	#
# gets.c:12:     if(strcmp(buff, "password"))
	leaq	-14(%rbp), %rax	#, tmp87
	leaq	.LC1(%rip), %rdx	#, tmp88
	movq	%rdx, %rsi	# tmp88,
	movq	%rax, %rdi	# tmp87,
	call	strcmp@PLT	#
# gets.c:12:     if(strcmp(buff, "password"))
	testl	%eax, %eax	# _1
	je	.L2	#,
# gets.c:14:         printf ("\n Wrong Password \n");
	leaq	.LC2(%rip), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	puts@PLT	#
	jmp	.L3	#
.L2:
# gets.c:18:         printf ("\n Correct Password \n");
	leaq	.LC3(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	call	puts@PLT	#
# gets.c:19:         pass = 1;
	movl	$1, -4(%rbp)	#, pass
.L3:
# gets.c:22:     if(pass)
	cmpl	$0, -4(%rbp)	#, pass
	je	.L4	#,
# gets.c:25:         printf ("\n Root privileges given to the user \n");
	leaq	.LC4(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	puts@PLT	#
.L4:
# gets.c:28:     return 0;
	movl	$0, %eax	#, _13
# gets.c:29: }
	leave	
.LCFI2:
	ret	
.LFE0:
	.size	main, .-main
	.section	.eh_frame,"a",@progbits
.Lframe1:
	.long	.LECIE1-.LSCIE1
.LSCIE1:
	.long	0
	.byte	0x3
	.string	"zR"
	.uleb128 0x1
	.sleb128 -8
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x1
	.align 8
.LECIE1:
.LSFDE1:
	.long	.LEFDE1-.LASFDE1
.LASFDE1:
	.long	.LASFDE1-.Lframe1
	.long	.LFB0-.
	.long	.LFE0-.LFB0
	.uleb128 0
	.byte	0x4
	.long	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI2-.LCFI1
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE1:
	.ident	"GCC: (Gentoo 11.1.0 p1) 11.1.0"
	.section	.note.GNU-stack,"",@progbits

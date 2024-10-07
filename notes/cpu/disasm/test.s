	.file	"test.c"
# GNU C17 (Gentoo 11.1.0 p1) version 11.1.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fno-dwarf2-cfi-asm
	.text
	.globl	fib
	.type	fib, @function
fib:
.LFB0:
	pushq	%rbp	#
.LCFI0:
	movq	%rsp, %rbp	#,
.LCFI1:
	pushq	%rbx	#
	subq	$24, %rsp	#,
.LCFI2:
	movq	%rdi, -24(%rbp)	# n, n
# test.c:3:   if (n < 2) return n;
	cmpq	$1, -24(%rbp)	#, n
	jg	.L2	#,
# test.c:3:   if (n < 2) return n;
	movq	-24(%rbp), %rax	# n, _5
	jmp	.L3	#
.L2:
# test.c:4:   return (fib(n - 1) + fib (n - 2));
	movq	-24(%rbp), %rax	# n, tmp88
	subq	$1, %rax	#, _1
	movq	%rax, %rdi	# _1,
	call	fib	#
	movq	%rax, %rbx	#, _2
# test.c:4:   return (fib(n - 1) + fib (n - 2));
	movq	-24(%rbp), %rax	# n, tmp89
	subq	$2, %rax	#, _3
	movq	%rax, %rdi	# _3,
	call	fib	#
# test.c:4:   return (fib(n - 1) + fib (n - 2));
	addq	%rbx, %rax	# _2, _5
.L3:
# test.c:6: }
	movq	-8(%rbp), %rbx	#,
	leave	
.LCFI3:
	ret	
.LFE0:
	.size	fib, .-fib
	.globl	main
	.type	main, @function
main:
.LFB1:
	pushq	%rbp	#
.LCFI4:
	movq	%rsp, %rbp	#,
.LCFI5:
# test.c:10: fib(23);
	movl	$23, %edi	#,
	call	fib	#
	movl	$0, %eax	#, _3
# test.c:11: }
	popq	%rbp	#
.LCFI6:
	ret	
.LFE1:
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
	.byte	0x83
	.uleb128 0x3
	.byte	0x4
	.long	.LCFI3-.LCFI2
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE1:
.LSFDE3:
	.long	.LEFDE3-.LASFDE3
.LASFDE3:
	.long	.LASFDE3-.Lframe1
	.long	.LFB1-.
	.long	.LFE1-.LFB1
	.uleb128 0
	.byte	0x4
	.long	.LCFI4-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI6-.LCFI5
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE3:
	.ident	"GCC: (Gentoo 11.1.0 p1) 11.1.0"
	.section	.note.GNU-stack,"",@progbits

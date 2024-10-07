	.file	"test0.c"
# GNU C17 (Gentoo 12.2.0 p1) version 12.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.0-p13, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fno-dwarf2-cfi-asm
	.text
	.globl	function
	.type	function, @function
function:
.LFB0:
	pushq	%rbp	#
.LCFI0:
	movq	%rsp, %rbp	#,
.LCFI1:
	subq	$48, %rsp	#,
	movl	%edi, -36(%rbp)	# a, a
	movl	%esi, -40(%rbp)	# b, b
	movl	%edx, -44(%rbp)	# c, c
# test0.c:1: void function(int a, int b, int c) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp82
	movq	%rax, -8(%rbp)	# tmp82, D.1991
	xorl	%eax, %eax	# tmp82
# test0.c:4: }
	nop	
	movq	-8(%rbp), %rax	# D.1991, tmp83
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp83
	je	.L2	#,
	call	__stack_chk_fail@PLT	#
.L2:
	leave	
.LCFI2:
	ret	
.LFE0:
	.size	function, .-function
	.globl	main
	.type	main, @function
main:
.LFB1:
	pushq	%rbp	#
.LCFI3:
	movq	%rsp, %rbp	#,
.LCFI4:
# test0.c:7:   function(1,2,3);
	movl	$3, %edx	#,
	movl	$2, %esi	#,
	movl	$1, %edi	#,
	call	function	#
# test0.c:8: }
	nop	
	popq	%rbp	#
.LCFI5:
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
	.long	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x86
	.uleb128 0x2
	.byte	0x4
	.long	.LCFI4-.LCFI3
	.byte	0xd
	.uleb128 0x6
	.byte	0x4
	.long	.LCFI5-.LCFI4
	.byte	0xc
	.uleb128 0x7
	.uleb128 0x8
	.align 8
.LEFDE3:
	.ident	"GCC: (Gentoo 12.2.0 p1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits

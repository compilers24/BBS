.section .bss
.lcomm MagicSquares_n, 4;
.section .text
.type MagicSquares_Generate, @function
MagicSquares_Generate:
pushl %ebp;
movl %esp,%ebp;
subl $696, %esp
movl 8(%ebp), %edx
imull 8(%ebp), %edx;
movl %edx, -20(%ebp)
movl $0, -12(%ebp)
movl 8(%ebp), %eax
cltd
movl $2, %ecx
idivl %ecx
movl %eax,%ecx;
movl %ecx, -4(%ebp)
movl 8(%ebp), %edx
subl $1, %edx
movl %edx, -8(%ebp)
_MagicSquares__label_n_1:
movl -12(%ebp), %edx
movl -20(%ebp), %ecx
cmpl %ecx, %edx
setl %dl
test %dl, %dl
je _MagicSquares__label_n_2
movl 8(%ebp), %edx
addl -12(%ebp), %edx
movl %edx, -16(%ebp)
movl -8(%ebp), %edx
subl $1, %edx
movl %edx,%eax;
cltd
idivl 8(%ebp)
cmpl $0, %edx
jge _MagicSquares__label_mod_1
movl 8(%ebp), %eax
addl %eax,%edx
_MagicSquares__label_mod_1:
movl %edx,%ecx;
movl %ecx, -8(%ebp)
incl -12(%ebp)
movl -4(%ebp), %edx
leal -696(%ebp), %ecx
imull $52, %edx
addl %edx,%ecx
movl -8(%ebp), %edx
shll $2, %edx
addl %edx,%ecx
movl -12(%ebp), %edx
movl %edx, (%ecx)
_MagicSquares__label_n_3:
movl -12(%ebp), %edx
movl -16(%ebp), %ecx
cmpl %ecx, %edx
setl %dl
test %dl, %dl
je _MagicSquares__label_n_4
movl -4(%ebp), %edx
addl $1, %edx
movl %edx,%eax;
cltd
idivl 8(%ebp)
cmpl $0, %edx
jge _MagicSquares__label_mod_2
movl 8(%ebp), %eax
addl %eax,%edx
_MagicSquares__label_mod_2:
movl %edx,%ecx;
movl %ecx, -4(%ebp)
movl -8(%ebp), %edx
addl $1, %edx
movl %edx,%eax;
cltd
idivl 8(%ebp)
cmpl $0, %edx
jge _MagicSquares__label_mod_3
movl 8(%ebp), %eax
addl %eax,%edx
_MagicSquares__label_mod_3:
movl %edx,%ecx;
movl %ecx, -8(%ebp)
incl -12(%ebp)
movl -4(%ebp), %edx
leal -696(%ebp), %ecx
imull $52, %edx
addl %edx,%ecx
movl -8(%ebp), %edx
shll $2, %edx
addl %edx,%ecx
movl -12(%ebp), %edx
movl %edx, (%ecx)
jmp _MagicSquares__label_n_3
_MagicSquares__label_n_4:
jmp _MagicSquares__label_n_1
_MagicSquares__label_n_2:
movl $0, %edx
movl %edx, -4(%ebp)
_MagicSquares__label_n_5:
movl 8(%ebp), %ecx
subl $1, %ecx
cmpl %ecx, %edx
jg _MagicSquares__label_n_6
movl $0, %edx
movl %edx, -8(%ebp)
_MagicSquares__label_n_7:
movl 8(%ebp), %ecx
subl $1, %ecx
cmpl %ecx, %edx
jg _MagicSquares__label_n_8
movl -4(%ebp), %edx
leal -696(%ebp), %ecx
imull $52, %edx
addl %edx,%ecx
movl -8(%ebp), %edx
shll $2, %edx
addl %edx,%ecx
pushl $0
movl (%ecx), %ecx
pushl %ecx;
call Out_Int
pushl $32
call Out_Char
movl -8(%ebp), %edx
addl $1, %edx
movl %edx, -8(%ebp)
jmp _MagicSquares__label_n_7
_MagicSquares__label_n_8:
call Out_Ln
movl -4(%ebp), %edx
addl $1, %edx
movl %edx, -4(%ebp)
jmp _MagicSquares__label_n_5
_MagicSquares__label_n_6:
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl _start
_start:
.section .data
.comm mmap_, 24
.section .text
movl $0, mmap_
#movl $65535, mmap_+4  # length of requested memory
movl $3, mmap_+8      # read, write, PROT_WRITE | PROT_READ, 0x02, 0x01
movl $34, mmap_+12  # map anonymously (0x20), map_private (0x2)
movl $-1, mmap_+16   # fd, -1 for portability
movl $0, mmap_+20    # offset is ignored
call Out_init_ ;
movl $3, MagicSquares_n
pushl MagicSquares_n
call MagicSquares_Generate
jmp OBERON_NOERROR_
.globl OBERON_ERRORCODE_
OBERON_ERRORCODE_:
movl $-1, %ebx
jmp OBERON_MAIN_EXIT_
OBERON_NOERROR_:
movl $0, %ebx
OBERON_MAIN_EXIT_:
movl $1, %eax
int $0x80

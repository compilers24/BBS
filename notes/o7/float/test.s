.section .bss
.lcomm test_i, 4;
.section .bss
.lcomm test_f, 4;
.section .bss
.lcomm test_ff, 4;
.section .bss
.lcomm test_fff, 4;
.section .bss
.lcomm test_bool, 1;
.section .text
.type test_write, @function
test_write:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edx
pushl %edx;
call Unix_writefloat
movl 12(%ebp), %edx
pushl %edx;
call Unix_writefloat
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
call Unix_init_ ;
movl $1084751872, test_f
movl $1077936128, test_ff
movl $1065353216, test_fff
flds test_ff
flds test_fff
fstsw
movb %al, test_bool
movsbl test_bool, %edx;
test %dl, %dl
je _test__l_1
_test__lt_1:
pushl $1
call Unix_writeint
jmp _test__le_1
_test__l_1:
pushl $0
call Unix_writeint
_test__l_2:
_test__le_1:
flds test_ff
flds test_f
fmulp %st,%st(1)
subl $4, %esp
fsts (%esp)
pushl test_fff
call test_write
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

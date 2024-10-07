.section .bss
.lcomm output_i, 4;
.section .bss
.lcomm output_s, 16;
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
leal output_s, %edx
.section .rodata
.globl
output__label_string_1: .ascii "hello, world\0"
.section .text
leal output__label_string_1, %ecx
movl (%ecx), %ebx
movl %ebx, (%edx)
addl $4, %edx
addl $4, %ecx
movl (%ecx), %ebx
movl %ebx, (%edx)
addl $4, %edx
addl $4, %ecx
movl (%ecx), %ebx
movl %ebx, (%edx)
addl $4, %edx
addl $4, %ecx
movb $0, (%edx)
pushl $15
leal output_s, %edx
pushl %edx;
call Out_String
call Out_Ln
movl $1234567, output_i
pushl $0
pushl output_i
call Out_Int
call Out_Ln
.section .rodata
.globl
output__label_string_2: .ascii "aaa\0"
.section .text
leal output__label_string_2, %edx
pushl %edx;
pushl %edx;
call Out_String
pushl $0
pushl $5
call Out_Int
call Out_Ln
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

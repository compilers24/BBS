.section .data
oop_T_typedsc_:
.long 12
.section .data
oop_T0_typedsc_:
.long 16, oop_T0_typedsc_
.section .data
oop_T1_typedsc_:
.long 16, oop_T1_typedsc_
.section .data
oop_T2_typedsc_:
.long 16, oop_T2_typedsc_
.section .bss
.lcomm oop_object, 12;
.section .bss
.lcomm oop_result, 4;
.section .text
.type oop_AddIt, @function
oop_AddIt:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edx
addl 12(%ebp), %edx
movl %edx,%eax;
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl oop_Do
.type oop_Do, @function
oop_Do:
pushl %ebp;
movl %esp,%ebp;
pushl $0
pushl oop_result
call Out_Int
call Out_Ln
movl %edx,%eax;
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
movl $123, oop_object+4
movl $4, oop_object+8
leal oop_AddIt, %edx
movl %edx, oop_object+12
pushl oop_object+8
pushl oop_object+4
call *oop_object+12
movl %eax, oop_result
call oop_Do
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

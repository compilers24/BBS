.section .data
M_R0_typedsc_:
.long 8
.section .data
M_R1_typedsc_:
.long 12, M_R1_typedsc_
.section .data
M_R2_typedsc_:
.long 16, M_R1_typedsc_, M_R2_typedsc_
.section .bss
.lcomm M_k, 4;
.section .bss
.lcomm M_p0, 4;
.section .bss
.lcomm M_p1, 4;
.section .bss
.lcomm M_p2, 4;
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
pushl %eax;
pushl %ebx;
.section .text
movl $16, mmap_+4
movl $90, %eax        # mmap
leal mmap_, %ebx
int $0x80
#now pointer to new location is in %eax
movl %eax, M_p2
leal M_R2_typedsc_, %edx
movl %edx, (%eax)
popl %ebx;
popl %eax;
pushl %eax;
pushl %ebx;
.section .text
movl $12, mmap_+4
movl $90, %eax        # mmap
leal mmap_, %ebx
int $0x80
#now pointer to new location is in %eax
movl %eax, M_p1
leal M_R1_typedsc_, %edx
movl %edx, (%eax)
popl %ebx;
popl %eax;
movl M_p2, %edx;
movl %edx, M_p1
movl M_p1, %edx;
movl (%edx), %edx
movl 8(%edx), %edx
leal M_R2_typedsc_, %ecx
movl %edx,%ebx;
cmpl %ecx, %ebx
sete %dl
test %dl, %dl
je _M__l_1
_M__lt_1:
movl M_p1, %edx
addl $8, %edx
movl $3, %ecx
movl %ecx, (%edx)
jmp _M__le_1
_M__l_1:
_M__le_1:
movl M_p2, %edx
addl $8, %edx
movl (%edx), %edx
movl %edx, M_k
pushl $0
pushl M_k
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

.section .data
hello_t_typedsc_:
.long 8
.section .bss
.lcomm hello_P, 4;
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
pushl %eax;
pushl %ebx;
.section .text
movl $8, mmap_+4
movl $90, %eax        # mmap
leal mmap_, %ebx
int $0x80
#now pointer to new location is in %eax
movl %eax, hello_P
leal hello_t_typedsc_, %edx
movl %edx, (%eax)
popl %ebx;
popl %eax;
pushl %eax;
pushl %ebx;
pushl %ecx;
movl $91, %eax
movl hello_P, %ebx
movl (%ebx), %ecx
movl (%ecx), %ecx
int $0x80
popl %ecx;
popl %ebx;
popl %eax;
jmp OBERON_NOERROR_
OBERON_ERRORCODE_:
movl $-1, %ebx
jmp OBERON_MAIN_EXIT_
OBERON_NOERROR_:
movl $0, %ebx
OBERON_MAIN_EXIT_:
movl $1, %eax
int $0x80

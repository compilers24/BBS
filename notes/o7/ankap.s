.section .bss
.lcomm ankap_a, 4;
.section .bss
.lcomm ankap_b, 4;
.section .bss
.lcomm ankap_c, 4;
.section .bss
.lcomm ankap_d, 4;
.section .text
.type ankap_tes, @function
ankap_tes:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edx
movl (%edx),%edx
addl 12(%ebp), %edx
movl 8(%ebp), %ecx
movl %edx, (%ecx)
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

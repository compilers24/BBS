.section .bss
.lcomm test7_f, 4;
.section .bss
.lcomm test7_l, 4;
.section .text
.type test7_F, @function
test7_F:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edx
addl 12(%ebp), %edx
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
leal test7_F, %edx
movl %edx, test7_f
pushl $3
pushl $5
call *test7_f
movl %eax, test7_l

.section .text
.globl Unix_write
.type Unix_write, @function
Unix_write:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %ecx
movl 16(%ebp), %edx
movl $1, %ebx
movl $4, %eax
int $0x80
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Unix_init_
Unix_init_:
ret

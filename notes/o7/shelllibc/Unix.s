.section .text
.globl Unix_write
.type Unix_write, @function
Unix_write:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edi
pushl %edi
call printf
popl %edi
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Unix_system
.type Unix_system, @function
Unix_system:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edi
pushl %edi
call system
popl %edi
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Unix_init_
Unix_init_:
ret

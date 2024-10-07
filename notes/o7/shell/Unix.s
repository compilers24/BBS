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
.globl Unix_system
.type Unix_system, @function
Unix_system:
pushl %ebp;
movl %esp,%ebp;
.section .data
.comm Unix_system_Null, 4
.comm Unix_system_Adr, 4
.section .data
Unix_default_shell: .ascii "/bin/sh\0"
.section .text
xor %eax, %eax
movl %eax, Unix_system_Null
leal Unix_default_shell, %ebx
movl 8(%ebp), %ecx
leal Unix_system_Null, %edx
movl $11, %eax
int $0x80
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Unix_init_
Unix_init_:
ret

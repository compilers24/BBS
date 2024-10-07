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
.globl Unix_writeint
.type Unix_writeint, @function
Unix_writeint:
pushl %ebp;
movl %esp,%ebp;
.section .rodata
.unix_writeint_intlab:
        .string "%d\n"
        .text
        pushl   8(%ebp)
#        pushl   $0
        pushl   $.unix_writeint_intlab
        call    printf 
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Unix_writefloat
.type Unix_writefloat, @function
Unix_writefloat:
pushl %ebp;
movl %esp,%ebp;
.section .rodata
.unix_writefloat_floatlab:
        .string "%f\n"
        .text
	subl $36, %esp
        flds 8(%ebp)
	fstpl 4(%esp)
	#pushl   8(%ebp)
        #pushl   $0
        #pushl   $.unix_writefloat_floatlab
        movl   $.unix_writefloat_floatlab, (%esp)
        call    printf
	movl $0, (%esp)
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

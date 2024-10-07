.section .text
.globl Out_String
.type Out_String, @function
Out_String:
pushl %ebp;
movl %esp,%ebp;
subl $4, %esp
movl $0, -4(%ebp)
_Out__label_n_1:
movl -4(%ebp), %edx
movl 8(%ebp), %ecx
addl %edx,%ecx
movsbl (%ecx), %ecx
movl $0, %edx
cmpl %edx, %ecx
setne %cl
test %cl, %cl
je _Out__label_n_2
incl -4(%ebp)
jmp _Out__label_n_1
_Out__label_n_2:
movl -4(%ebp), %edx
pushl %edx;
movl 8(%ebp), %edx
pushl %edx;
pushl %edx;
call Unix_write
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Out_Char
.type Out_Char, @function
Out_Char:
pushl %ebp;
movl %esp,%ebp;
subl $4, %esp
movsbl 8(%ebp), %edx
movb %dl, -2(%ebp)
movb $0, -1(%ebp)
pushl $1
leal -2(%ebp), %edx
pushl %edx;
pushl %edx;
call Unix_write
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Out_Ln
.type Out_Ln, @function
Out_Ln:
pushl %ebp;
movl %esp,%ebp;
subl $4, %esp
movb $10, -2(%ebp)
movb $0, -1(%ebp)
pushl $1
leal -2(%ebp), %edx
pushl %edx;
pushl %edx;
call Unix_write
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Out_Int
.type Out_Int, @function
Out_Int:
pushl %ebp;
movl %esp,%ebp;
subl $16, %esp
movl $0, -16(%ebp)
_Out__label_n_3:
movl -16(%ebp), %edx
movl 12(%ebp), %ecx
cmpl %ecx, %edx
setne %dl
test %dl, %dl
je _Out__label_n_4
pushl $32
call Out_Char
incl -16(%ebp)
jmp _Out__label_n_3
_Out__label_n_4:
leal -12(%ebp), %edx
pushl %edx;
pushl %edx;
movl 8(%ebp), %edx
pushl %edx;
call IntStr_IntToStr
movl $0, -16(%ebp)
_Out__label_n_5:
movl -16(%ebp), %edx
leal -12(%ebp), %ecx
addl %edx,%ecx
movsbl (%ecx), %ecx
movl $0, %edx
cmpl %edx, %ecx
setne %cl
test %cl, %cl
je _Out__label_n_6
incl -16(%ebp)
jmp _Out__label_n_5
_Out__label_n_6:
movl -16(%ebp), %edx
pushl %edx;
leal -12(%ebp), %edx
pushl %edx;
pushl %edx;
call Unix_write
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl Out_init_
Out_init_:
ret

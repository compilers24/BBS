.section .bss
.lcomm IntStr_string, 0;
.section .bss
.lcomm IntStr_charrr, 1;
.section .bss
.lcomm IntStr_rrr, 4;
.section .text
.type IntStr_Reverse, @function
IntStr_Reverse:
pushl %ebp;
movl %esp,%ebp;
subl $4, %esp
_IntStr__label_n_1:
movl 16(%ebp), %edx
movl 20(%ebp), %ecx
cmpl %ecx, %edx
setl %dl
test %dl, %dl
je _IntStr__label_n_2
movl 16(%ebp), %edx
movl 8(%ebp), %ecx
addl %edx,%ecx
movsbl (%ecx), %ecx
movb %cl, -1(%ebp)
movl 16(%ebp), %edx
movl 8(%ebp), %ecx
addl %edx,%ecx
movl 20(%ebp), %edx
movl 8(%ebp), %ebx
addl %edx,%ebx
movsbl (%ebx), %ebx
movb %bl, (%ecx)
movl 20(%ebp), %edx
movl 8(%ebp), %ecx
addl %edx,%ecx
movsbl -1(%ebp), %edx
movb %dl, (%ecx)
incl 16(%ebp)
decl 20(%ebp)
jmp _IntStr__label_n_1
_IntStr__label_n_2:
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl IntStr_IntToStr
.type IntStr_IntToStr, @function
IntStr_IntToStr:
pushl %ebp;
movl %esp,%ebp;
subl $24, %esp
movl 8(%ebp), %edx
movl $0, %ecx
cmpl %ecx, %edx
setl %dl
test %dl, %dl
je _IntStr__l_1
_IntStr__lt_1:
movb $45, -12(%ebp)
movl 8(%ebp), %edx
negl %edx;
movl %edx, 8(%ebp)
movl $1, -16(%ebp)
movl 8(%ebp), %edx
movl %edx, IntStr_rrr
jmp _IntStr__le_1
_IntStr__l_1:
movl $0, -16(%ebp)
_IntStr__l_2:
_IntStr__le_1:
movl -16(%ebp), %edx
movl %edx, -20(%ebp)
_IntStr__label_n_3:
movl 8(%ebp), %eax
cltd
movl $10, %ecx
idivl %ecx
cmpl $0, %edx
jge _IntStr__label_mod_1
movl %ecx,%eax;
addl %eax,%edx
_IntStr__label_mod_1:
movl %edx,%ecx;
movl %ecx, -24(%ebp)
movl -24(%ebp), %edx
addl $48, %edx
movl %edx, -24(%ebp)
movl -20(%ebp), %edx
leal -12(%ebp), %ecx
addl %edx,%ecx
movsbl -24(%ebp), %edx
movb %dl, (%ecx)
movl -20(%ebp), %edx
leal -12(%ebp), %ecx
addl %edx,%ecx
movsbl (%ecx), %ecx
movb %cl, IntStr_charrr
movl 8(%ebp), %eax
cltd
movl $10, %ecx
idivl %ecx
movl %eax,%ecx;
movl %ecx, 8(%ebp)
incl -20(%ebp)
movl 8(%ebp), %edx
movl $0, %ecx
cmpl %ecx, %edx
sete %dl
test %dl, %dl
je _IntStr__label_n_3
movl -20(%ebp), %edx
leal -12(%ebp), %ecx
addl %edx,%ecx
movb $0, %dl
movb %dl, (%ecx)
movl -20(%ebp), %edx
subl $1, %edx
pushl %edx;
movl -16(%ebp), %ecx
pushl %ecx;
leal -12(%ebp), %ecx
pushl %ecx;
pushl %ecx;
call IntStr_Reverse
movsbl -12(%ebp), %edx
movb %dl, IntStr_charrr
movsbl -11(%ebp), %edx
movb %dl, IntStr_charrr
movl 12(%ebp), %edx
leal -12(%ebp), %ecx
movl (%ecx), %ebx
movl %ebx, (%edx)
addl $4, %ecx
addl $4, %edx
movl (%ecx), %ebx
movl %ebx, (%edx)
addl $4, %ecx
addl $4, %edx
movl 12(%ebp), %edx
movsbl (%edx), %edx
movb %dl, IntStr_charrr
movl 12(%ebp), %edx
addl $1, %edx
movsbl (%edx), %edx
movb %dl, IntStr_charrr
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.globl IntStr_init_
IntStr_init_:
ret

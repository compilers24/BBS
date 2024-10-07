.section .bss
.lcomm hanoi_DiscNum, 4;
.section .text
.type hanoi_WriteStep, @function
hanoi_WriteStep:
pushl %ebp;
movl %esp,%ebp;
pushl $0
movl 8(%ebp), %edx
pushl %edx;
call Out_Int
.section .rodata
.globl
hanoi__label_string_1: .ascii " ---> \0"
.section .text
leal hanoi__label_string_1, %edx
pushl %edx;
pushl %edx;
call Out_String
pushl $0
movl 12(%ebp), %edx
pushl %edx;
call Out_Int
call Out_Ln
movl %ebp,%esp;
popl %ebp;
ret
.section .text
.type hanoi_BuildTower, @function
hanoi_BuildTower:
pushl %ebp;
movl %esp,%ebp;
movl 8(%ebp), %edx
movl $1, %ecx
cmpl %ecx, %edx
sete %dl
test %dl, %dl
je _hanoi__l_1
_hanoi__lt_1:
movl 16(%ebp), %edx
pushl %edx;
movl 12(%ebp), %edx
pushl %edx;
call hanoi_WriteStep
jmp _hanoi__le_1
_hanoi__l_1:
movl 8(%ebp), %edx
subl $1, %edx
movl 16(%ebp), %ecx
pushl %ecx;
movl 20(%ebp), %ecx
pushl %ecx;
movl 12(%ebp), %ecx
pushl %ecx;
pushl %edx;
call hanoi_BuildTower
movl 16(%ebp), %edx
pushl %edx;
movl 12(%ebp), %edx
pushl %edx;
call hanoi_WriteStep
movl 8(%ebp), %edx
subl $1, %edx
movl 12(%ebp), %ecx
pushl %ecx;
movl 16(%ebp), %ecx
pushl %ecx;
movl 20(%ebp), %ecx
pushl %ecx;
pushl %edx;
call hanoi_BuildTower
_hanoi__l_2:
_hanoi__le_1:
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
call Out_init_ ;
movl $15, hanoi_DiscNum
movl hanoi_DiscNum, %edx;
movl $0, %ecx
cmpl %ecx, %edx
setg %dl
test %dl, %dl
je _hanoi__l_3
_hanoi__lt_2:
pushl $2
pushl $3
pushl $1
pushl hanoi_DiscNum
call hanoi_BuildTower
jmp _hanoi__le_2
_hanoi__l_3:
.section .rodata
.globl
hanoi__label_string_2: .ascii "Error: The number of discs is invalid\0"
.section .text
leal hanoi__label_string_2, %edx
pushl %edx;
pushl %edx;
call Out_String
call Out_Ln
_hanoi__l_4:
_hanoi__le_2:
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

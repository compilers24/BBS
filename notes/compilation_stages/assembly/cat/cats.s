.section data

# syscalls
.equ SYS_OPEN,  5
.equ SYS_WRITE, 4
.equ SYS_READ,  3
.equ SYS_CLOSE, 6
.equ SYS_EXIT,  1

# file descriptors

.equ STDIN,  0
.equ STDOUT, 1
.equ STDERR, 2

# opts
.equ RDONLY, 0

# interrupt
.equ SYSCALL, 0x80

.equ EOF, 0   # return value of read when we hit the end of the file.

# stack offsets
.equ RESERVE, 8
.equ FD_IN,  -4  # file descriptor of the input file
.equ FD_OUT, -8  # file descriptor of the output file
.equ ARGC,    0  # args count
.equ ARGV0,   4  # name of the program
.equ ARGV1,   8  # first argument
.equ ARGV2,  12  # second argument (offsets by 4, because 32 bit system

.section .text

.globl _start

_start:

# open() syscall
## save the stack pointer
movl %esp, %ebp

# allocate space for file descriptors on the stack
subl $RESERVE, %esp

movl $SYS_OPEN,    %eax      # number of open() syscall to eax
movl $ARGV1(%ebp), %ebx      # pointer to the input filename to ebx
movl $RDONLY,      %ecx      # open file in read only mode
movl $0666,        %edx      # if we create the file, this sets permissions.
int  $SYSCALL




.section .data

.section .text

.globl _start

_start:
  movl $1, %eax   # number of exit() syscall
  movl $0, %ebx   # return
  int $0x80       # interrupt, execute the code.

.section     .text
.globl      _start         #must be declared for linker (ld)

_start:                    #tell linker entry point

    movl     $13,  %edx        # message length
    movl     $message, %ecx    # message to write
    movl     $1, %ebx          # file descriptor (stdout)
    movl     $4, %eax          # write() system call number)
    int      $0x80             #call kernel

    movl     $1, %eax          # exit() system call number
    movl     $0, %ebx          # return of the exit call
    int      $0x80             # call kernel

.section     .data

message:
.ascii       "Hello, world\n" 


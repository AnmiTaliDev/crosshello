.section .data
    msg: .ascii "Hello, World!\n"
    len = . - msg

.section .text
    .global _start

_start:
    # write syscall
    movl $4, %eax       # syscall number for write
    movl $1, %ebx       # file descriptor 1 is stdout
    movl $msg, %ecx     # message to write
    movl $len, %edx     # message length
    int $0x80           # make syscall

    # exit syscall
    movl $1, %eax       # syscall number for exit
    movl $0, %ebx       # return 0
    int $0x80           # make syscall
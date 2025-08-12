.section .data
hello_str: .string "Hello, World!\n"

.section .text
.global _start

_start:
    # Write system call
    li a7, 64          # sys_write
    li a0, 1           # stdout
    la a1, hello_str   # message
    li a2, 14          # length
    ecall
    
    # Exit system call
    li a7, 93          # sys_exit
    li a0, 0           # exit status
    ecall
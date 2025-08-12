.section .data
hello_str: .string "Hello, World!\n"

.section .text
.global _start

_start:
    # C-SKY specific registers and instructions
    # Load address of string
    lrw r1, hello_str
    
    # System call for write (C-SKY specific)
    movi r0, 1          # stdout file descriptor
    movi r2, 14         # length of string
    movi r7, 4          # sys_write system call number
    trap 0              # system call
    
    # Exit program
    movi r0, 0          # exit status
    movi r7, 1          # sys_exit system call number
    trap 0              # system call
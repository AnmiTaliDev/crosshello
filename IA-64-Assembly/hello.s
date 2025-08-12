.section .data
hello: .ascii "Hello, World!\n"
hello_len = . - hello

.section .text
.global _start

_start:
    mov r15 = 1024;;
    mov out0 = 1;;
    movl out1 = hello;;
    mov out2 = hello_len;;
    br.call.sptk.many b0 = write;;
    
    mov out0 = 0;;
    mov r15 = 1025;;
    br.call.sptk.many b0 = exit;;
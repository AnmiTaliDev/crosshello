.section .data
hello: .ascii "Hello, World!\n"
hello_len = . - hello

.section .text
.global _start

_start:
    mov x8, #64
    mov x0, #1
    ldr x1, =hello
    mov x2, hello_len
    svc #0
    
    mov x8, #93
    mov x0, #0
    svc #0
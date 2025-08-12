.data
    hello: .ascii "Hello, World!\n"
    hello_len = . - hello

.text
.global _start

_start:
    mov r7, #4
    mov r0, #1
    ldr r1, =hello
    mov r2, #hello_len
    swi 0
    
    mov r7, #1
    mov r0, #0
    swi 0
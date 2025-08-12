.section .data
hello: .ascii "Hello, World!\n"
hello_len = . - hello

.section .text
.global _start

_start:
    li r0, 4
    li r3, 1
    lis r4, hello@ha
    addi r4, r4, hello@l
    li r5, hello_len
    sc
    
    li r0, 1
    li r3, 0
    sc
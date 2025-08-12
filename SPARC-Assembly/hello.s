.section ".data"
    msg: .ascii "Hello, World!\n"
    len = . - msg

.section ".text"
    .global _start

_start:
    mov 4, %g1
    mov 1, %o0
    set msg, %o1
    mov len, %o2
    ta 0x10

    mov 1, %g1
    mov 0, %o0
    ta 0x10
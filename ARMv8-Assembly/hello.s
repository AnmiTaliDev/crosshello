.data
hello_str: .ascii "Hello, World!\n"
hello_len = . - hello_str

.text
.global _start

_start:
    mov w8, #64
    mov w0, #1
    adrp x1, hello_str
    add x1, x1, :lo12:hello_str
    mov w2, hello_len
    svc #0
    
    mov w8, #93
    mov w0, #0
    svc #0
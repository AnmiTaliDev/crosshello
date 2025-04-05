; NASM for Linux x86_64
section .data
    msg db "Hello, World!", 0xa  ; message with newline
    len equ $ - msg              ; length of message

section .text
    global _start

_start:
    ; write syscall
    mov rax, 1          ; syscall number for write
    mov rdi, 1          ; file descriptor 1 is stdout
    mov rsi, msg        ; message to write
    mov rdx, len        ; message length
    syscall

    ; exit syscall
    mov rax, 60         ; syscall number for exit
    xor rdi, rdi        ; return 0
    syscall
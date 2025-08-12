.386
.model flat, stdcall
option casemap:none

.data
hello db "Hello, World!", 13, 10, 0

.code
start:
    push offset hello
    call StdOut
    
    push 0
    call ExitProcess

end start
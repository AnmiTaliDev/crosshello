    org 0x0000
    
start:
    mov dptr, #hello_str
    
print_loop:
    clr a
    movc a, @a+dptr
    jz done
    mov sbuf, a
wait_tx:
    jnb ti, wait_tx
    clr ti
    inc dptr
    sjmp print_loop
    
done:
    sjmp $

hello_str:
    db "Hello, World!", 0x0A, 0
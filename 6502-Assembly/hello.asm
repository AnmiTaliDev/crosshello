; 6502 Assembly for C64
*=$0801

; BASIC header
    .byte $0c,$08,$0a,$00,$9e,$20,$32,$30,$36,$32,$00,$00,$00

*=$080e

; Print "Hello, World!"
start:
    ldx #0
loop:
    lda message,x
    beq done
    jsr $ffd2    ; CHROUT
    inx
    jmp loop
done:
    rts

message:
    .text "Hello, World!"
    .byte 13, 0
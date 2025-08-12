.device atmega328p
.org 0x0000

start:
    ; Setup stack pointer
    ldi r16, 0xFF
    out SPL, r16
    ldi r16, 0x02
    out SPH, r16

    ; Hello World for AVR
    ; This would typically output to UART or LEDs
    ldi r16, 'H'
    out PORTB, r16

loop:
    rjmp loop
; PIC16F84A Assembly
    processor 16f84a
    include "p16f84a.inc"

    __config _CP_OFF & _WDT_OFF & _PWRTE_ON & _RC_OSC

    org 0x00

start:
    ; Simple Hello World for PIC
    ; This would typically output to LEDs or serial
    movlw 'H'
    movwf PORTB
    goto $

    end
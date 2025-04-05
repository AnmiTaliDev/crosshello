format PE console
entry start

include 'win32a.inc'

section '.data' data readable writeable
    msg db 'Hello, World!', 13, 10, 0

section '.code' code readable executable
start:
    push msg
    call [printf]
    add esp, 4

    push 0
    call [ExitProcess]

section '.idata' import data readable writeable
    library kernel32, 'kernel32.dll', \
            msvcrt,   'msvcrt.dll'

    import kernel32, \
           ExitProcess, 'ExitProcess'

    import msvcrt, \
           printf, 'printf'
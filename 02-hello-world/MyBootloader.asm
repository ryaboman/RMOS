org 0x7c00
bits 16

jmp start                     ; сразу переходим в start

%include "print_string.asm"

; ====================================================

start:
    cli                                ; запрещаем прерывания, чтобы наш код 
                                       ; ничто лишнее не останавливало

    mov ah, 0x00              ; очистка экрана
    mov al, 0x03
    int 0x10

    mov sp, 0x7c00            ; инициализация стека

    mov si, mHello            ; печатаем приветственное сообщение
    call print_string_si      ; после чего сразу переходим в mainloop
    
    die: jmp short die        ; Зависаем в бесконечном цикле

; 0x0d - символ возварата картки, 0xa - символ новой строки
mHello: db "Hello, world - I was booted!", 0x0d, 0xa, 0

input: times 64 db 0          ; размер буффера - 64 байта

times 510 - ($-$$) db 0
dw 0xaa55

;Setting org memory offset
[org 0x7c00]
mov ah, 0x0e

;Printing test
mov ah, 0x0e ; TTY mode

mov al, 'H'
int 0x10

mov al, 'e'
int 0x10

mov al, 'l'
int 0x10
int 0x10

mov al, 'o'
int 0x10

mov al, 0x0a
int 0x10
;-------------

;Accesing the shh_its_a_secret pointer
mov al, '2'
int 0x10
mov al, [shh_its_a_secret]
int 0x10

;Accesing the shh_its_a_secret pointer "old code"
;mov al, '3'
;int 0x10
;mov bx, shh_its_a_secret
;add bx, 0x7c00
;mov al, [bx]
;int 0x10
;-------------

jmp $ ;Jump to current address aka "inf-loop"

shh_its_a_secret:
    db 'X'

;Bootsector setup!
times 510-($-$$) db 0
dw 0xaa55

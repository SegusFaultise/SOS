[org 0x7c00]

mov bx, BOOT_PRINT
call print

call print_nl

mov dx, 0x12fe
call print_hex

jmp $ ;Jump to current address aka "inf-loop"

%include "boot_sector_print.asm"
%include "boot_sector_hex_print.asm"

BOOT_PRINT:
    db "booting 123....", 0

;Bootsector setup!
times 510-($-$$) db 0
dw 0xaa55

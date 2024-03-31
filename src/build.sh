# Build .asm with nasm
nasm -f bin boot_sector.asm -o boot_sector.asm -o boot_sector.bin

# Start qemu "OS emulator" with "boot_sector.asm"
qemu-system-i386 boot_sector.bin

Построение бинарника:
nasm -f bin MyBootloader.asm -o MyBootloader.bin
Запуск на виртуальной машине:
qemu-system-i386 MyBootloader.bin -monitor stdio

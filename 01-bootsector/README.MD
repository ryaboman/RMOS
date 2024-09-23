Построение бинарника:
nasm -f bin bootsector.asm -o bootsector.bin
Запуск на виртуальной машине:
qemu-system-i386 bootsector.bin -monitor stdio

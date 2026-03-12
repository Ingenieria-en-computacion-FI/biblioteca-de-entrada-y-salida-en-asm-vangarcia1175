CC=nasm
LD=ld

all:
	nasm -f elf32 src/scan_int.asm -o src/scan_int.o
	nasm -f elf32 src/print_int.asm -o src/print_int.o
	nasm -f elf32 src/scan_char.asm -o src/scan_char.o
	nasm -f elf32 src/print_char.asm -o src/print_char.o
	nasm -f elf32 src/print_string.asm -o src/print_string.o
	nasm -f elf32 src/scan_string.asm -o src/scan_string.o
	nasm -f elf32 src/newline.asm -o src/newline.o
	nasm -f elf32 src/main.asm -o src/main.o
	ld -m elf_i386 src/scan_int.o src/print_int.o src/scan_char.o src/print_char.o src/print_string.o src/scan_string.o src/newline.o src/main.o -o program

clean:
	rm -f src/*.o program

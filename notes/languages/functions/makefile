all:
		as --32 -o power.o power.s
		ld -m elf_i386 power.o -o power
		./power
		echo $?

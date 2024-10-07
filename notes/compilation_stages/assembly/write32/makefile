

all: assemble link

assemble:
		as --32 -o write.o write.s

link:
		ld  -m elf_i386 -o write write.o

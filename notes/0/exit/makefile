

all: assemble link

assemble:
		as --32 -o exit.o exit.s

link:
		ld  -m elf_i386 -o exit exit.o

ASM = as

all: assemble link

assemble:
					$(ASM) -o exit.o exit.s

link:
					ld -o exit exit.o

clean:
					rm *.o

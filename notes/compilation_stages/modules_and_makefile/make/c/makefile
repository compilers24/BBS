

all: math.o test.o
			cc -o test math.o test.o
		

math.o: math.c 
			cc -c math.c

test.o: test.c
			cc -c test.c
clean:
			rm *.o

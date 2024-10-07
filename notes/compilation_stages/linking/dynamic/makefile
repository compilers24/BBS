

all: lib
		gcc -Wall -L/usr/local/lib prog.c -lctest -o prog


lib:
		gcc -Wall -fPIC -c *.c
		gcc -shared -Wl,-soname,libctest.so.1 -o libctest.so.1.0   *.o

install:
		mv libctest.so.1.0 /usr/local/lib
		ln -sf /usr/local/lib/libctest.so.1.0 /usr/local/lib/libctest.so.1
		ln -sf /usr/local/lib/libctest.so.1.0 /usr/local/lib/libctest.so

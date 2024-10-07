#include <unistd.h> // for write
#include <string.h> // for strcpy

int main()
{
 char str[15];
 strcpy(str, "Hello, world\n");
 write(1, str, 13);
 return 0;

}

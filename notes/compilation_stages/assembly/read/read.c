#include <unistd.h>
#include <stdio.h>

#define STDIN  0
#define STDOUT 1

int main()
{

  char buf[1];

  while(read(0, buf, sizeof(buf))>0) 
  {
   // read() here read from stdin charachter by character
   // the buf[0] contains the character got by read()
   //....
   write(1, buf, 1);
  }
  fflush(stdout);
}

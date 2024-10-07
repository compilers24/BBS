: squared ( n -- n^2 )
 dup * ;

: cubed ( n -- n^3 )
 dup squared * ;

: abs ( n1 -- +n2 )
  dup 0 < if
     negate
  endif ;

: min ( n1 n2 -- n )
  2dup < if
    drop
  else
    nip
  endif ;


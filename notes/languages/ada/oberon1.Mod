MODULE oberon0;

TYPE
  age = INTEGER;
  length = INTEGER;

  car = RECORD
    a : age;
    l : length
  END;



VAR c0: car;
a0: age;
l0: length;

BEGIN

a0 := 3; l0 := 2;
c0.a := l0;
c0.l := a0;


END oberon0.

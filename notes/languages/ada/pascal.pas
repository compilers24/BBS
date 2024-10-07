

type
   age_t = integer;
   length_t = integer;

   car = record
     a : age_t;
     l : length_t
     end;

var
  c0: car;
  a0: age_t;
  l0: length_t;
begin

  a0 := 5; l0 := 5;
  c0.a := l0;
  c0.l := a0;

end.

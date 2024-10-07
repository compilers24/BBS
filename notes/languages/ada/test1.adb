with Ada.Text_IO;

procedure test1 is

  type Age_T is new Integer;
  type Length_T is new Integer;

  type Car_T is record
         age : Age_T;
      length : Length_T;
      end record;

  function Make(Age: Age_T; Length: Length_T) return Car_T is
    This: Car_T;
  begin
    This.Age := Length;
    This.Length := Age;
    return This;
  end Make;

  Car : Car_T := Make (Age => 2, Length => 3);
  -- := Make (Age => 2, Length => 3);
  --a: Age;
  --l: Length;
begin
  --Make(a, l);
  if Car.Age = 2 and Car.Length = 3 then
    Ada.Text_IO.Put_Line("correct");
  else
    Ada.Text_IO.Put_Line("wrong");
  end if;

end test1;

with Ada.Text_IO;

procedure Main is

  type Car_T is record
         age : Integer;
      length : Integer;
      end record;

  function Make(Age: Integer; Length: Integer) return Car_T is
    This: Car_T;
  begin
    This.Age := Age;
    This.Length := Length;
    return This;
  end Make;

  Car : Car_T := Make (Age => 2, Length => 3);

begin

  if Car.Age = 2 and Car.Length = 3 then
    Ada.Text_IO.Put_Line("correct");
  else
    Ada.Text_IO.Put_Line("wrong");
  end if;

end Main;

MODULE struct;

TYPE

  human = RECORD
    age : INTEGER;
   name : ARRAY 16 OF CHAR
   END;

 alien = RECORD
   age : INTEGER;
  name : ARRAY 16 OF CHAR
  END;


PROCEDURE aaa;
VAR
  valod: human;
  ford:  alien;
  humans : ARRAY 8 OF human;
  aliens : ARRAY 8 OF alien;
BEGIN
  aliens[0] := ford;
  aliens[1] := valod;

END aaa;


BEGIN
aaa;

END struct;

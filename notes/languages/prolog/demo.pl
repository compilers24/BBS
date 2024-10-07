age(liz,92).
age(charles,69).
age(wills,35).

parent(diana,wills).
parent(diana,harry).
parent(charles,wills).
parent charles,harry).

olderThan(P,Age) :-
  age(P,A1),
  A1 > Age.

isOlder(P1,P2) :-
  age(P1,A1),
  age(P2,A2),
  A1 > A2.

grandparent(P1,P2) :-
  parent(P1,C),
  parent(C,P2).



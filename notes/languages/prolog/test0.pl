% the following is a rule
travel(A,C) :- next_to(A,B), next_to(B,C).

% these are facts
next_to(california,nevada).
next_to(california,oregon).
next_to(california,arizona).
next_to(oregon,california).
next_to(nevada,california).
next_to(arizona,california).


fruit(orange).
fruit(apple).
fruit(pear).

/*

next_to(california,nevada).
next_to(california,To).

fruit(X).
fruit(apple).
fruit(grapes).

travel(oregon, nevada).
travel(oregon, maine).


*/

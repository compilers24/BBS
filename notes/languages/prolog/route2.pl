

next_to(stepanavan, vanadzor).
next_to(vanadzor, dilijan).
next_to(vanadzor, stepanavan).
next_to(dilijan, vanadzor).

next_to(meghri, kapan).
next_to(kapan, meghri).
next_to(kapan, goris).
next_to(goris, kapan).
next_to(goris, stepanakert).
next_to(stepanakert, goris).

travel(A,C) :- next_to(A,B), next_to(B,C).
travel(A,B) :- next_to(A, X), travel(X, B).

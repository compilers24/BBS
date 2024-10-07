Formal language
===============

* Alphabet
* Rules
* Words

E = { 0, 1 }
E = { a, b, ... z}

E* - the set of all possible strings.

if E = {a, b}
then E = { empty string, a, b, aa, ab, ba, bb, aaa, ... }

it is an infinite set.

L ( language) is a subset of E*

E = {a, b}

language L1 is anything that accepts words starting with a.

L1 = { empty string, a, ab, abb, aab, aba, ... }

so L1 = { w | w begins with a}



Finite State Machines
=====================

M = (Q, E, d, q0, F)

Q - set of states q0,....qn
E - alphabet
d - function, that takes state and a letter from alphabet, and takes machine to the next state: Q x E -> Q
  for example: d(q0, a) = q1

q0 - starting state. some specific state with start with.
     it is indicated with a curly arrow pointing at the state.
     ~> (q0)

F - subset of all states: final states. also called accept states.

so if a machine takes you to the final state, then it means you have a valid stream of characters.

          1                    E = { 0, 1 } (our alphabet)
  ~>(q0) ----> ((q1))--
    |  ^          ^   |        d(q0, 0) = q0
    |__|          |   |        d(q0, 1) = q1
     0            |___|
                   0, 1
                  
    string "0000" is not ok.
    string "1010" is ok.

  ________________________________-

  E = { 0, 1 }

  we draw a machine that only accepts multpiles of 2.

  but we only can input a string like "01101010".
  accepting multiples of 2 would mean we add the numbers together and keep the sum as the state.
                        accepts: 0 011 101 110 11 0011 and empty string.
                        does not accept: 01  10 100 001
                        in other words if there is an even number of 1s,
                        the string is accepted.

                 1
  ~> ((q0)) -----------> (q1)----
      |  ^ /\             /  ^   |
      |__|  \ -----------/   |   |0
      0         1            -----


Regular grammars
=================

Regular grammar can be described by a single non-recursive EBNF production

identifier = letter {letter | digit}
number     = digit { digit }
string     = '"' {noQuote} '"'
keyword    = letter { letter }
operator   = ">" "="

DFA can be used to analyze regular languages



                  ----|
                  |   |
     letter      \|/  | letter
(0)---------->((1))---|
                  ^   |
                  |---| digit


                  (()) final state.
                  start state is always state 0 by convension.

   d | letter | digit
   -------------------
   s0|   s1   | error   "finite" because d can be written down explicitly.
   s1|   s1   |   s1

   DFA has recognized the sentence
   * if it is in a final state
   * and if the input is totally consumed or there is no possible transition with the next input symbol.



% natural numbers
% add(zero, X, X).
add(0, X, X).
add(s(X), Y, s(Z)) :- add(X, Y, Z).

less(0, s(_)).
less(s(A), s(B)) :- less(A, B).

less_one(1, s(_)).
less_one(s(A), s(B)) :- less_one(A, B).



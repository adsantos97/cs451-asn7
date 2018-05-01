% Arizza Santos
% CS451 ASN7

% Magic Constant -> sum of each row, column, diagonal
% M = n((n^2)+1)/2
% n = 3 -> three by three
% M = 3((3^2)+1)/2
% M = 15
% permutations? 9 digits, so 9! -> 362880

generate(L, L1) :- permutate(L, L1).

test([
    N1, N2, N3,
    N4, N5, N6,
    N7, N8, N9
]) :-
    sumOfList(15, [N1, N2, N3]),
    sumOfList(15, [N4, N5, N6]),
    sumOfList(15, [N7, N8, N9]),
    sumOfList(15, [N1, N4, N7]),
    sumOfList(15, [N2, N5, N8]),
    sumOfList(15, [N3, N6, N9]),
    sumOfList(15, [N1, N5, N9]),
    sumOfList(15, [N7, N5, N3]).

sumOfList(0, []).
sumOfList(X, [L|Ls]) :-  sumOfList(Y, Ls), X is L + Y. 

remove(X, [X|Y], Y).
remove(X, [H|Y], [H|Z]) :- remove(X, Y, Z).  

permutate([], []).
permutate([X|Xs], L) :- permutate(Xs, L1), remove(X, L, L1). 

square([
    1,2,3,
    4,5,6,
    7,8,9
]).

print_square([A, B, C|D]) :- !,
    write(A), write(' '), write(B), write(' '), write(C), nl,
    print_square(D).
print_square([]).

main(X) :- 
    square(X), 
    generate(X, L),
    test(L),
    print_square(L).

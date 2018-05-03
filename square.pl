% Arizza Santos
% CS451 ASN7

% Assignment Notes:
% Magic Constant -> sum of each row, column, diagonal
% M = n((n^2)+1)/2
% n = 3 -> three by three
% M = 3((3^2)+1)/2
% M = 15
% permutations? 9 digits, so 9! -> 362880

% generate(+List, -ProcessedList)
%    Generates a ProcessedList from List
%    using permutate.
generate(L, L1) :- permutate(L, L1).

% test(+List)
%   Tests a given List to see if it is
%   a Magic Square.
test([
    N1, N2, N3,
    N4, N5, N6,
    N7, N8, N9
]) :-
    sumOf(15, [N1, N2, N3]),
    sumOf(15, [N4, N5, N6]),
    sumOf(15, [N7, N8, N9]),
    sumOf(15, [N1, N4, N7]),
    sumOf(15, [N2, N5, N8]),
    sumOf(15, [N3, N6, N9]),
    sumOf(15, [N1, N5, N9]),
    sumOf(15, [N7, N5, N3]).

% sumOf(?Sum, ?List)
%    If Sum and List are instantiated,
%    the query in English form is
%    "Is Sum the sum of the List?" 
sumOf(0, []).
sumOf(X, [L|Ls]) :-  sumOf(Y, Ls), X is L + Y. 

% remove(+Element, +List, -ProcessedList)
%    Removes the Element of List, giving ProcessedList.
remove(X, [X|Y], Y).
remove(X, [H|Y], [H|Z]) :- remove(X, Y, Z).  

% permutate(?List, ?ProcessedList)
%    If List and ProcessedList are instantiated,
%    the query in English form is
%    "Is List a permutation of ProcessedList?"
permutate([], []).
permutate([X|Xs], L) :- permutate(Xs, L1), remove(X, L, L1). 

square([
    1,2,3,
    4,5,6,
    7,8,9
]).

% print_square(+List)
%    A list (in this case, of 9 elements) is printed out
%    displaying 3 elements on each line.
print_square([A, B, C|D]) :- !,
    write(A), write(' '), write(B), write(' '), write(C), nl,
    print_square(D).
print_square([]).

% driver code
main:- 
    square(X), 
    generate(X, L),
    test(L),
    print_square(L).

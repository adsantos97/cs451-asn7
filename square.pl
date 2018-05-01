% Arizza Santos
% CS451 ASN7

% Magic Constant -> sum of each row, column, diagonal
% M = n((n^2)+1)/2
% n = 3 -> three by three
% M = 3((3^2)+1)/2
% M = 15

%generate([], []).
%generate([L|Ls], L1) :- permutate(L, L1), generate(Ls, L1).

generate(L, L1) :- permutate(L, L1).

app([], Xs, Xs).
app([X|Xs], Ys, [X|Zs]) :- app(Xs, Ys, Zs).

remove(X, [X|Y], Y).
remove(X, [H|Y], [H|Z]) :- remove(X, Y, Z).  

permutate([], []).
permutate([X|Xs], L) :- permutate(Xs, L1), remove(X, L, L1). 

square([
    [1,2,3],
    [4,5,6],
    [7,8,9]
]).

print_square([A|B]) :- !,
    write(A), nl,
    print_square(B).
print_square([]).

main(X) :- square(X), print_square(X).

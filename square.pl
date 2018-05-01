% Arizza Santos
% CS451 ASN7

%magic_square([
%    row(_,_,_),
%    row(_,_,_),
%    row(_,_,_)
%]).

%generate([
%    N1, N2, N3,
%    N4, N5, N6,
%    N7, N8, N9
%]) :- 
%Numbers = [1,2,3,4,5,6,7,8,9].

remove(X, [X|Y], Y).
remove(X, [H|Y], [H|Z]) :- remove(X, Y, Z).  

%permutate([], []).
%permutate([X|Xs], L) :- permutate(Xs, L1), remove(X, L, L1). 



%numbers([1,2,3,4,5,6,7,8,9]).

%takeout(X,[X|R],R).  
%takeout(X,[F |R],[F|S]) :- takeout(X,R,S).

%perm([X|Y],Z) :- perm(Y,W), takeout(X,Z,W).  
%perm([],[]).

print_magic_square([A|B]) :- !,
    write(A), nl,
    print_magic_square(B).
print_magic_square([]).

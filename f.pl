% hw:
% cousin(X, Y) :-  

%
% database
%
father(dave, erin).
father(dave, chris).
father(curt, jimmy).
mother(judy, erin).
mother(judy, chris).
mother(edie, dave).
mother(mary_ann, judy).
mother(mary_ann, curt).

parent(X, Y) :- mother(X, Y).
parent(X, Y) :- father(X, Y).

%% way 1
%% married(dave, judy).
%% married(A, B) :- married(B, A).

%% way 2
%% married(dave, judy).
%% married(judy, dave).

% way3
base_married(dave, judy).
married(A, B) :- base_married(A, B).
married(A, B) :- base_married(B, A).

%% mother_in_law
mil(A, B) :- mother(A, C), married(C, B).

grandparent(A, B) :- parent(A, C), parent(C, B).
grandmother(A, B) :- mother(A, C), parent(C, B).

sibling(A, B) :- parent(C, A), parent(C, B).

cousin(A, B) :- parent(C, A), parent(D, B), sibling(C, D).

% D - grandparent
% C & E - parents
% A & B - children
%cousin(A, B) :- parent(C, A), parent(D, C), parent(E, B), parent(D, E).

% member(X, [X|_]).
% member(X, [_|Ys]) :- member(X, Ys).

% append
app([], Xs, Xs).
app([X|Xs], Ys, [X|Zs]) :- app(Xs, Ys, Zs).



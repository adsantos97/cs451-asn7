% Arizza Santos
% CS451 ASN7

% app(?List1, ?List2, ?ResultList)
%    Appends List1 to List2, giving ResultList.
app([], Xs, Xs).
app([X|Xs], Ys, [X|Zs]) :- app(Xs, Ys, Zs).

% second(?Element, ?List)
%    If Element and List are instantiated,
%    the query in English form is
%    "Is Element second in the List?"
second(X, Ys) :- app([_], [X|_], Ys).

% lastElm(?Element, ?List)
%    If Element and List are instantiated,
%    the query in English form is
%    "Is Element the last element of the List?"
lastElm(X, Ys) :- app(_, [X],Ys).

% allButLast(?Sublist, ?List)
%   If Sublist and List are instantiated,
%   the query in English form is
%   "Is Sublist all but the last of List?"
allButLast(Xs, Ys) :- app(Xs, [_], Ys).

% concat_three(?SubList, ?ResultList)
%    Three copies of SubList concatenated
%    together, giving ResultList.
concat_three(Xs, Ys) :- app([Xs], [Xs,Xs], Ys).

% ins(?A, ?X, ?Y)
%    Whether a list Y is formed by inserting A
%    somewhere in a list X.
ins(A, X, Y) :- app(L1, L2, X), app(L1, [A|L2], Y).

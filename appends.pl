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
% Tests:
% second(X, [1,2,3]). -> "What is the second element X in [1,2,3]?"
% second(2, [1,2,3,4]). -> "Is 2 the second element in the [1,2,3,4]?"
% second(2, X). -> "2 is the second element in what list?"

% lastElm(?Element, ?List)
%    If Element and List are instantiated,
%    the query in English form is
%    "Is Element the last element of the List?"
lastElm(X, Ys) :- app(_, [X],Ys).
% Tests:
% lastElm(X, [1,2,3]). -> "What is the last element in [1,2,3]?"
% lastElm(3, [1,2,3]). -> "Is 3 the last element in [1,2,3]?"
% lastElem(3, X). -> "3 is the last element in what list?"

% allButLast(?Sublist, ?List)
%   If Sublist and List are instantiated,
%   the query in English form is
%   "Is Sublist all but the last of List?"
allButLast(Xs, Ys) :- app(Xs, [_], Ys).
% Tests:
% "What is all but the last of [1,2,3]?"
% allButLast(X, [1,2,3]).
% allButLast([1,2], [1,2,3]). -> "Is [1,2] all but the last element of [1,2,3]?"
% allButLast([1,2], X). -> "[1,2] is all but the last of what list?"

% concat_three(?SubList, ?ResultList)
%    Three copies of SubList concatenated
%    together, giving ResultList.
concat_three(Xs, Ys) :- app([Xs], [Xs,Xs], Ys).
% Tests:
% "What is the sublist concatenated three time to create
% [[1,2],[1,2],[1,2]]?"
% concat_three(X, [[1,2],[1,2],[1,2]]).
% "Is [1,2] concatenated three times [[1,2],[1,2],[1,2]]?"
% concat_three([[1,2],[1,2],[1,2]]).
% "What is the result of concatenating three copies of [1,2]?"
% concat_three([1,2], X).

% ins(?A, ?X, ?Y)
%    Whether a list Y is formed by inserting 
%    element A somewhere in a list X.
ins(A, X, Y) :- app(L1, L2, X), app(L1, [A|L2], Y).
% Tests:
% "What is inserted into [1,2,3] to produce [1,2,3,5]?"
% ins(A, [1,2,3], [1,2,3,5]).
% "What is the list produced when 5 is inserted to [1,2,3]?"
% ins(5, [1,2,3], X). 
% "Is 5 inserted to [1,2,3], [1,2,3,5]?"
% ins(5, [1,2,3], [1,2,3,5]).

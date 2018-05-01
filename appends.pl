% Arizza Santos
% CS451 ASN7

app([], Xs, Xs).
app([X|Xs], Ys, [X|Zs]) :- app(Xs, Ys, Zs).

second(X, Ys) :- app([_], [X|_], Ys).
lastElm(X, Ys) :- app(_, [X],Ys).

allButLast(Xs, Ys) :- app(Xs, [_], Ys).

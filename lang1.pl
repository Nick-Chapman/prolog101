
% Natural Language processing; using append

pro(['I']).
det([the]).
det([a]).
noun([man]).
noun([telescope]).
verb([saw]).

s(Xs) :- np(Ys), vp(Zs), append(Ys,Zs,Xs).

np(Xs) :- pro(Xs).
np(Xs) :- det(Ys), noun(Zs), append(Ys,Zs,Xs).

vp(Xs) :- verb(Xs).
vp(Xs) :- verb(Ys), np(Zs), append(Ys,Zs,Xs).

gen :-
    s(L), write(L), nl, fail.

main :- gen; halt.

good :- s(['I',saw,the,man]).
bad :- s(['I',the,man]).


% Natural Language processing; using difference lists

pro(['I'|L],L).
det([the|L],L).
det([a|L],L).
noun([man|L],L).
noun([telescope|L],L).
verb([saw|L],L).

s(X,Z) :- np(X,Y), vp(Y,Z).

np(X,Z) :- pro(X,Z).
np(X,Z) :- det(X,Y), noun(Y,Z).

vp(X,Z) :- verb(X,Z).
vp(X,Z) :- verb(X,Y), np(Y,Z).

gen :-
    s(L,[]), write(L), nl, fail.

main :- gen; halt.

good :- s(['I',saw,the,man],[]).
bad :- s(['I',the,man],[]).

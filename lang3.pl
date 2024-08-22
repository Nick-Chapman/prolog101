
% Natural Language processing; using DCG syntax

pro --> ['I'].
det --> [the].
det --> [a].
noun --> [man].
noun --> [telescope].
verb --> [saw].

s --> np, vp.

np --> pro.
np --> det, noun.

vp --> verb.
vp --> verb, np.

gen :-
    s(L,[]), write(L), nl, fail.

main :- gen; halt.

good :- s(['I',saw,the,man],[]).
bad :- s(['I',the,man],[]).

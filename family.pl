
person(nick).
person(ellie).
person(hannah).
person(molly).
person(jan).
person(kate).

parent(nick,ellie).
parent(nick,hannah).
parent(nick,molly).
parent(jan,nick).
parent(jan,kate).

sibling(X,Y) :-
    parent(P,X),
    parent(P,Y),
    X \= Y.

sisters(A,L) :-
    findall(X, sibling(A,X), L).

run1 :- sibling(hannah,X), write(X), nl, fail.

run2 :- sisters(hannah,L), write(L), nl.

run :- run2. %select here

main :- (run; halt), halt.


% first example...

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

sibling(X,Y) :- parent(P,X), parent(P,Y), X \= Y.

main(S) :- sibling(hannah,S).

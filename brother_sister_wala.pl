male(ram).
male(hari).
male(rajesh).

female(anita).
female(sita).
female(geeta).

parent(gopal,ram).
parent(gopal,anita).
parent(gopal,gita).
parent(shema,hari).
parent(shema,sita).
parent(shema,rajesh).

married(anita,hari).
married(hari,anita).
married(sita,ram).
married(ram,sita).


brother_in_law(X,Y):-
(male(X),married(X,Z),sibling(Z,Y));
(male(X),married(Z,Y),sibling(X,Z));
(male(X),married(X,Z),married(Z,W),sibling(W,Y)).


sister_in_law(X,Y):-
(female(X),married(X,Z),sibling(Z,Y));
(female(X),married(Z,Y),sibling(X,Z));
(female(X),married(X,Z),married(Z,W),sibling(Y,W)).


sibling(X,Y):-
parent(P,X),
parent(P,Y),
X\=Y.

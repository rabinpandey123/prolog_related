male(john).
male(mary).
male(mike).
female(s)
%Define love facts
loves(john, mary).
loves(mary, mike).
loves(mike, sara).
loves(anna, mary).

% Jealousy rule
jealous(X, Y) :-
    loves(X, Z),
    loves(Y, Z),
    X \= Y.

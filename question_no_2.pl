% Define family relationships
married(john, mary).
married(mike, sara).
sibling(john, mike).
sibling(mary, anna).

% Brother-in-law rule
brother_in_law(X, Y) :- married(X, Z), sibling(Z, Y).
brother_in_law(X, Y) :- sibling(X, Z), married(Z, Y).

% Sister-in-law rule
sister_in_law(X, Y) :- married(X, Z), sibling(Z, Y).
sister_in_law(X, Y) :- sibling(X, Z), married(Z, Y).


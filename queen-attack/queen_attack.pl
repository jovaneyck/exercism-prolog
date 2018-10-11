create((X,Y)) :-
    0 =< X, X =< 7,
    0 =< Y, Y =< 7.

attack((A,B), (C,D)) :-
    create((A,B)),
    create((C,D)),
    conflict((A,B),(C,D)).

conflict((X1,_), (X2, _)) :- 
    X1 == X2, !.
conflict((_,Y1), (_,Y2)) :- 
    Y1 == Y2, !.
conflict((X1,Y1), (X2,Y2)) :- 
    L is abs(X2 - X1),
    R is abs(Y2 - Y1),
    L = R.
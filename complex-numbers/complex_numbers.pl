real((A,_),A).
imaginary((_,B),B).

add((A1,B1),(A2,B2), (ASum, BSum)) :-
    ASum is A1 + A2,
    BSum is B1 + B2.

sub((A1,B1),(A2,B2), (ASub, BSub)) :-
    ASub is A1 - A2,
    BSub is B1 - B2.

mul((A,B),(C,D),(MulA, MulB)) :-
    MulA is (A * C - B * D),
    MulB is (B * C + A * D).

div((A,B),(C,D),(DivA, DivB)) :-
    DivA is (A * C + B * D) / (C * C + D * D),
    DivB is (B * C - A * D) / (C * C + D * D).

abs((A,B), Abs) :-
    sqrt(A * A + B * B, Abs).

conjugate((A,B), (A, ConB)) :-
    ConB is -1 * B.
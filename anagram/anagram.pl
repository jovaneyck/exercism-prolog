anagram(_, [], []) :- !.
anagram(Word, [O | Opts], [O | RMatching]) :-
    is_anagram(Word, O),
    anagram(Word, Opts, RMatching),
    !.
anagram(Word, [ _ | Opts], RMatching) :-
    anagram(Word, Opts, RMatching).

is_anagram(One,Other) :-
    string_lower(One, OneLower),
    string_lower(Other, OtherLower),
    OneLower \= OtherLower,
    string_chars(OneLower, Ones),
    string_chars(OtherLower, Others),
    is_permutation(Ones, Others).

is_permutation([],[]).
is_permutation([H|T], Other) :-
    without(H, Other, OtherWithout),
    is_permutation(T, OtherWithout).

without(X, [X|T], T).
without(X, [H|T], [H|W]) :-
    without(X, T, W).
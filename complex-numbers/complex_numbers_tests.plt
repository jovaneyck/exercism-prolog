% swipl -f complex_numbers.pl -s complex_numbers_tests.plt -g run_tests,halt 

pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(real_part).

    test(real_part_of_a_purely_real_number, condition(true)) :-
        real((1,0),1).

    test(real_part_of_a_purely_imaginary_number, condition(true)) :-
        real((0,1),0).

    test(real_part_of_a_number_with_real_and_imaginary_part, condition(true)) :-
        real((1,2),1).

:- end_tests(real_part).


:- begin_tests(imaginary_part).

    test(imaginary_part_of_a_purely_real_number, condition(true)) :-
        imaginary((1,0),0).

    test(imaginary_part_of_a_purely_imaginary_number, condition(true)) :-
        imaginary((0,1),1).

    test(imaginary_part_of_a_number_with_real_and_imaginary_part, condition(true)) :-
        imaginary((1,2),2).

:- end_tests(imaginary_part).


:- begin_tests(addition).

    test(add_purely_real_numbers, condition(true)) :-
        add((1,0), (2,0), (3,0)).

    test(add_purely_imaginary_numbers, condition(true)) :-
        add((0,1), (0,2), (0,3)).

    test(add_numbers_with_real_and_imaginary_part, condition(true)) :-
        add((1,2), (3,4), (4,6)).

:- end_tests(addition).


:- begin_tests(subtraction).

    test(subtract_purely_real_numbers, condition(true)) :-
        sub((1,0), (2,0), (-1,0)).

    test(subtract_purely_imaginary_numbers, condition(true)) :-
        sub((0,1), (0,2), (0,-1)).

    test(subtract_numbers_with_real_and_imaginary_part, condition(true)) :-
        sub((1,2), (3,4), (-2,-2)).

:- end_tests(subtraction).


:- begin_tests(multiplication).

    test(multiply_purely_real_numbers, condition(true)) :-
        mul((1,0), (2,0), (2,0)).

    test(multiply_purely_imaginary_numbers, condition(true)) :-
        mul((0,1), (0,2), (-2,0)).

    test(multiply_numbers_with_real_and_imaginary_part, condition(true)) :-
        mul((1,2), (3,4), (-5, 10)).

:- end_tests(multiplication).


:- begin_tests(division).

    test(divide_purely_real_numbers, condition(true)) :-
        div((1,0), (2,0), (0.5,0)).

    test(divide_purely_imaginary_numbers, condition(true)) :-
        div((0,1), (0,2), (0.5,0)).

    test(divide_numbers_with_real_and_imaginary_part, condition(true)) :-
        div((1,2), (3,4), (0.44, 0.08)).

:- end_tests(division).


:- begin_tests(absolute_value).

    test(absolute_value_of_a_positive_purely_real_number, condition(true)) :-
        abs((5,0), R), R =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(true)) :-
        abs((-5,0), R), R =:= 5.

    test(absolute_value_of_a_positive_purely_imaginary_number, condition(true)) :-
        abs((0,5), R), R =:= 5.

    test(absolute_value_of_a_negative_purely_real_number, condition(true)) :-
        abs((0,-5), R), R =:= 5.

    test(absolute_value_of_a_number_with_real_and_imaginary_part, condition(true)) :-
        abs((3,4), R), R =:= 5.

:- end_tests(absolute_value).


:- begin_tests(conjugate).

    test(conjugate_a_purely_real_number, condition(true)) :-
        conjugate((5,0), (5,0)).

    test(conjugate_a_purely_imaginary_number, condition(true)) :-
        conjugate((0,5), (0,-5)).

    test(conjugate_a_number_with_real_and_imaginary_part, condition(true)) :-
        conjugate((1,1), (1,-1)).

:- end_tests(conjugate).

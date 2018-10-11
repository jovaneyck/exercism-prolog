% Please visit https://exercism.io/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.io/tracks/prolog/tests
% for help running the tests for prolog exercises.

% The goal below allows tests to be skipped
% unless the "--all" flag is passed at
% the command line.

% easily reload all files + run tests in a single line:
% * open a vscode integrated terminal + swpl in the working dir
% * ['hello_world.pl', 'hello_world_tests.plt'], run_tests.

pending :-
    current_prolog_flag(argv, ['--all'|_]).
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hello_world).

    test(hello_world) :-
        hello_world('Hello World!').

    test(hello_world_with_a_name) :-
        hello_world('Alice', 'Hello Alice!').

    test(hello_world_another_name) :-
        hello_world('Bob', 'Hello Bob!').

:- end_tests(hello_world).

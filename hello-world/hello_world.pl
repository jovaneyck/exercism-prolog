hello_world('Hello World!').

hello_world(Name, Greeting) :-
    format(atom(Greeting), "Hello ~w!", [Name]).

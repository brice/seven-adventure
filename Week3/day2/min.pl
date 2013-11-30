% If there is only one element we have our min
min([What], What).

% Compare First and second element and keep the minimal
min([First,Second|Tail], What) :-
    First =< Second,
    min([First|Tail], What).

min([First,Second|Tail], What) :-
    First > Second,
    min([Second|Tail], What).


min_rec([Head|Tail], What) :- comp(Tail, Head, What).


comp([],Min,Min).
comp([Head|Tail],First,Second) :-
    Min is min_rec(Head, First),
    comp(Tail, Min, Second).


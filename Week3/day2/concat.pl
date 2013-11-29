% concat([], List, List).
concatenate([], List, List).
concatenate([H|T1], List, [H|T2]) :-
    concatenate(T1,List, T2).

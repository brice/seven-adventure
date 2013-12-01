cmp([], []).
cmp([H], [H]).

% Try to sort two elements :
cmp([H,F], [H,F]) :- H < F.
cmp([H,F], [F,H]) :- H >= F.

% We use an accumulator
insert_sort(List, Sorted) :- i_sort(List, [], Sorted).

% On the bottom line Acc receive Acc
% insert_sort([], What). What = []
i_sort([], Acc, Acc).

% Cut the list between Head and Tail
% Apply reorder on tail and i_sort on tail to fill the Accumulator
i_sort([H|T], Acc, Sorted) :-
    reorder(H, Acc, NewAcc),
    i_sort(T, NewAcc, Sorted).

% No need to reorder, i create list
reorder(X, [], [X]).

% No need to reorder
reorder(X, [Y|Tail], [X,Y|Tail]) :-
    X < Y.
% Switch X and Y then reorder the Tail
reorder(X, [Y|Tail], [Y|List]) :-
    X >= Y, reorder(X, Tail, List).

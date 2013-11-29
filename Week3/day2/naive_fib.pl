naive_fib(X, X) :- X < 2, !.
naive_fib(X, Y) :-
  Idx1 is X - 1,
  Idx2 is X - 2,
  naive_fib(Idx1, A),
  naive_fib(Idx2, B),
  Y is A + B.
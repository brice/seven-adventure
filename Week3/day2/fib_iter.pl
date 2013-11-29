fib_iter(N, F) :-
    % si N est plus petit que 2, pas de calcul
    N < 2 -> F = N ;
    % Sinon il est lancé
    fib_iter_cal(0, 1, N, F).

% arg1 : l'avant dernier calcul
% arg2 : le dernier calcul
% arg3 : Indice de boucle de calcul en cours (arrêt à 1)
% arg4 : résultat final
fib_iter_cal(_F, F, 1, F) :- !.

fib_iter_cal(TT1, TT2, N, F) :-
    TT3 is TT1 + TT2,
    N1 is N - 1,
    fib_iter_cal(TT2, TT3, N1, F).
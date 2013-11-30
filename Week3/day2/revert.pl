% Traditional way, we append the head to the tail using recursive way
recu_revert([], []).
recu_revert([H|T], W) :- recu_revert(T, Rev), append(Rev, [H], W).

% Another is to use an accumulator
% See : http://www.learnprolognow.org/lpnpage.php?pagetype=html&pageid=lpn-htmlse25
accu([H|T], Accu, What):- accu(T,[H|Accu],What).
accu([], Accu, Accu).
revert(List, What) :- accu(List, [], What).

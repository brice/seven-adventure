-module(basic_count).
-export([words/1, count_list/1,count_to_ten/0]).

words(String) -> count_list(string:tokens(String, " ")).

count_list([]) -> 0;
count_list([ _ | Tail]) -> 1 + count_list(Tail).

count_to_ten() -> count_to_ten(1).

count_to_ten(10) -> io:fwrite("~w\n", [10]);
count_to_ten(X) ->
    io:fwrite("~w, ", [X]),
    count_to_ten(X+1).

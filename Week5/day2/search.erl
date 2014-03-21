-module(search).
-export([keyword/2]).

keyword([], Key) -> io:format("~p not found~n", [Key]);
keyword([ {Keyword, Message} | Rest] , Key) ->
    if
        Key == Keyword ->
            Message;
        true ->
            keyword(Rest, Key)
    end.
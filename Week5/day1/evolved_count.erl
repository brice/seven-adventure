-module(evolved_count).
-export([words/1]).

% Interesting stuff we can export a function with only one parameters
% but use it internally with more parameters
words(String) -> words(String, 0).

% Constants for space, tabulator, carriage-return and line-feed
-define(SPACE, ($ )).
-define(TAB, $\t).
-define(RETURN, $\r).
-define(NEWLINE, $\n).
-define(COMMA, $.).

words([], Count) -> Count;

% If last character is not a space or tab or any return we consider it as a word
words([Char], Count) when
    (Char /= 32 andalso Char /= ?TAB andalso Char /= ?RETURN andalso Char /= ?NEWLINE andalso Char /= ?COMMA)
    -> Count + 1;

words([ Char1, Char2  | String], Count) when
    (Char1 /= 32 andalso Char1 /= ?TAB andalso Char1 /= ?RETURN andalso Char1 /= ?NEWLINE andalso Char1 /= ?COMMA)
    andalso
    (Char2 == ?SPACE orelse Char2 == ?TAB orelse Char2 == ?RETURN orelse Char2 == ?NEWLINE orelse Char2 == ?COMMA)
    -> words(String, Count+1);

words([ _ | String], Count) -> words(String, Count).
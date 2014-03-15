-module(messages).
-export([match/1]).

% If it's a success message we print it
match('success') -> io:fwrite("success\n");
% If it's an error patern we print the message

% I try this way to print message first
% match({error, Message}) -> io:fwrite(string:concat(Message,"\n")).

% But this way is more elegant
match({error, Message}) -> io:fwrite("~s\n", [Message]).

% And this way is fun (try it)
% match({error, Message}) -> io:fwrite("~w\n", [Message]).
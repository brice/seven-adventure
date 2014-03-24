-module(translate).
-export([loop/0]).

loop() -> receive
    "casa" ->
        io:format('Maison~n'),
        loop();

    "blanca" ->
        io:format('Blanc~n'),
        loop();

    _  ->
        io:format('No sé'),
        loop
end.
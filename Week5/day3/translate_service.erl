-module(translate_service).
-export([loop/0, translate/2]).

loop() -> receive
    { From, "casa" } ->
        From ! "maison",
        loop();
    { From , "blanca"} ->
        From ! "blanc",
        loop();
    { From, _ } ->
        From ! "No sé",
        loop()
    end.

translate(To, Word) ->
    To ! {self(), Word},
    receive
        Translation -> Translation
    end.

% At first we define name of the module
-module(basic).
% Then we define what we want to export /1 means that the function will take one parameter.
-export([mirror/1]).

% The function itself
mirror(Anything) -> Anything.

% Then in our code after compilation we can call our function like this >basic:mirror(whatever).
% And autocompletion works!
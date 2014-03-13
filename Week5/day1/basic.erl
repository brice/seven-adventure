% At first we define name of the module
-module(basic).
% Then we define what we want to export
-export([mirror/1]).

% The function itself
mirror(Anything) -> Anything.
-module(matching_function).
-export([number/1]).

% Be careful we end lines with ; but the function end with a .
number(one)     -> 1;
number(two)     -> 2;
number(three)   -> 3.
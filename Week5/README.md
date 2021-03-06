## Introduction

11 march 2014 : Let's start erlang (again)

### Day 1 : Appearing Human

Again the book we learn, on first day, the langage's basics.

* Comments, variable and expressions. Variable are immutable and erlang is dynamically typed.
* Atoms, lists and tuples. Variable begins with an uppercase, symbols or atoms begins with a lowercase character. Atoms are arbitrary name that we use to symbolize world things. List and tuples are similar to prolog.
* Pattern matching that allow to extract values from a tuple.

Exemple :

    > Person = {person, {name, "Agent Smith"}, {profession, "Killing programs"}}.
    {person,{name,"Agent Smith"},
        {profession,"Killing programs"}}

    > {person, {name, Name}, {profession, Profession}} = Person.
    {person,{name,"Agent Smith"},
        {profession,"Killing programs"}}

    > Name.
    "Agent Smith"

    > Profession.
    "Killing programs"

We can see in this example differences between atom (that match itself) and variable (that take values).

* Pattern Matching also work with list.

Exemple :

    > List = [1,2,3].
    [1,2,3]

    > [ Head | Tail ]=List.
    [1,2,3]

    > Head.
    1

    > Tail.
    [2,3]

    > [One, Two | Rest] = List.
    [1,2,3]

    > One.
    1

    > Two.
    2

    > Rest.
    [3]

* And finally the = symbol is not an assigment but a pattern match. (Faux-ami like we say in french).
* Bit Matching. Erlang allow to handle data a byt leval quite easily in order to do low level tasks.
* Functions. See day1/basic.erl for a basic function.

### Day 1 : Self study

#### Find

The erlang official site :

* http://www.erlang.org/

Official documentation for Erlang's function library

* http://erlang.org/doc/apps/stdlib/

The documentation for Erlang's OTP library

* http://www.erlang.org/doc/design_principles/users_guide.html
* Another link about OTP : [What is OTP](http://learnyousomeerlang.com/what-is-otp)

#### Do

Write a function that uses recursion to return the number of words in a string.

* I find some information about [Erlang's string functions](http://www.erlang.org/doc/man/string.html) and specially the sting:tokens function.
* My first attempt is written in day1/basic_count.erl but it only take space separator.
* I write another function to take spaces, tab, return and comma in account. See day1/evolved_count.erl. My code is inspired by [this gist](https://gist.github.com/fwangel/1281731)

Write a function that uses recursion to count to ten

* The main difficulty of this exercice is the using of fwrite. See basic_count:count_to_ten in basic_count.erl

Write a function that uses matching to selectively print *"success"* or *"error: message"* givent input of the form *{error, Message}* or *success*

* This function is very easy to write with pattern matching. See day1/messages.erl to read it.

### Day 2 : Changing forms

In this day we see other syntax of the language like
* Case condition
* If condition
* How to create Anonymous Function (with fun i like it!)
* How to apply anonymous function to lists
* fold function
* And advanced list concepts like list Comprehensions

### Day 2 : Self Study

#### Do

Write a function that accepts a list (Exemple List = [{keyword, "value"}, {erlang, "Woooo"}, {cobol, "Boo"}].) and a keyword and return the value associated to the keyword.

* See [search.erl](day2/search.erl).

Consider a list looks like *[{item, quantity, price}]*. Write a list comprehension that builds a list of *items* of the form *[{item, total_price}]*, where *total_price* is *quantity* times *price*.

* First create the liste

Code :

     > Cart = [{"pen", 4, 0.5}, {"paper", 10, 0.25}, {"scissor", 1, 7}].
     [{"pen",4,0.5},{"paper",10,0.25},{"scissor",1,7}]

* Then create the list comprehensions

Code :

    > Items = [{Product, Quantity*Price} || {Product, Quantity, Price} <- Cart].
    [{"pen",2.0},{"paper",2.5},{"scissor",7}]

Bonus Problem : Write a program that reads a Tic-Tac-Toe presented as a list or a tuple of size nine. Return the winner, *cat* if nobody won, or *no_winner* if no player has won yet.

* Todo

### Day 3 : Red pill

In this The last day we see concurrency in action with Erlang and create a basic asynchronous service (see [translate.erl](day3/translate.erl)) and a basic synchronous service (see [translate_service.erl](day3/translate_service.erl)). We also saw a monitoring process : see [roulette.erl](day3/roulette.erl), [coroner.erl](day3/coroner.erl) and [doctor.erl](day3/doctor.erl).


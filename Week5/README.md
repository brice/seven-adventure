## Introduction

11 march 2014 : Let's start erlang (again)

### Day 1 : Appearing Human

Again the book we learn, on first day, the langage's basics.

* Comments, variable and expressions. Variable are immutable and erlang is dynamically typed.
* Atoms, lists and tuples. Variable begins with an uppercase, symbols or atoms begins with a lowercase character. Atoms are arbitrary name that we use to symbolize world things. List and tuples are similar to prolog.
* Pattern matching that allow to extract values from a tuple. Exemple :


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

Pattern Matching also work with list :

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

And finally the = symbol is not an assigment but a pattern match. (Faux-ami like we say in french).

* Bit Matching. Erlang allow to handle data a byt leval quite easily in order to do low level tasks.
* Functions. See day1/basic.erl for a basic function.

### Day 1 : Self study
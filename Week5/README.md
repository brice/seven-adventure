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

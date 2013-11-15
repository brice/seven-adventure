## Introduction

Now we go on Io for the second week

### Day 1 : Skipping School, Hanging Out

Very simple program with few basic ground like described in p50.

Io has a few type of collections : List and Map. "list" is also a method and could be used directly for math. Map is the prototype for kay-value pairs.

Defining a singleton is quite easy and needs two line

    Singleton := Object clone
    Singleton clone := Singleton

### Day 1 : Self study

Find :

Some Io example problems

http://iolanguage.org/scm/io/docs/IoGuide.html

An Io community that will answer questions

http://groups.yahoo.com/neo/groups/iolanguage/info
http://stackoverflow.com/questions/tagged/iolanguage
https://twitter.com/iolanguage
irc://irc.freenode.net/io

A style guide with Io idioms

http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

Answer :

Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed?

    > 1 +1
    ==> 2
    > 1 + "one"
    Exception: argument 0 to method '+' must be a Number, not a 'Sequence'
      ---------
    message '+' in 'Command Line' on line 1

I think is is strongly typed.

Is 0 *true* or *false*? What about the empty string? Is nil *true* or *false*?

    > if (0) println
    ==> true
    > if("") println
    ==> true
    > if (nil) println
    ==> false

How can you tell what slots a prototype support?

    > MyProto := Object clone
    ==>  MyProto_0xe58de0:
        type             = "MyProto"
    > MyProto slotNames

What is the difference between =, := and ::=

    ::=    Creates slot, creates setter, assigns value
    :=   Creates slot, assigns value
    =    Assigns value to slot if it exists, otherwise raises exception

Execute the code in a slot give its name


    Car macro := method(name, perform(name))

    Car macro("drive")


### Day 2 : The sausage King

Rework of day 1

Is 0 *true* or *false*? What about the empty string? Is nil *true* or *false*?

    # if (condition, true code, false code)
    > if (0, "true", "false")
    ==> true
    > if ("", "true", "false")
    ==> true
    > if (nil, "true", "false")
    ==> false

Io is a very light language that allows lof of extension and bluff. You can define your own operators.

In Io everytghing is a message and has three components : the *sender*, the *target* and the arguments. Thats why you have things like this :

    # stringSender targetFunction
    > "Message" println

The book give some exemple that explains concept of target, sender and argument.

Io gives se of methods to understand whet's goin on in the arguments. In the nutshell, every object has a prototype and those prototype that have slots. As simple as that!

### Day 2 : Self study

1. Write a program to find the nth Fibonna ci number

- In day2_fibonnaci.io the problem is solved by recursion.
- In day2_fibonnaci_loop.io the problem is solved with loops

2. How would you change / to return 0 if the denominator is 0.

In fact if you try this

    Number / := method(denum,if (denum == 0, 0, self / denum))

The function will work for 0 but other division will run in an infinite loop.

    > 1/0
    ==> 1/0
    > 1/2
    ...

The trick is to copy */* in a new function and use this one

    >  Number prevDiv := Number getSlot("/")
    ==> Number_/()
    > Number / := method(denum,if (denum == 0, 0, self prevDiv(denum)))
    ==> Number / := method(denum,
        if (denum == 0, 0, self prevDiv(denum))
    )
    > 1 / 2
    0.5
    > 1 / 0
    0

For the fun i tried this and it work the same.

    > Number \ := Number getSlot("/")
    ==> Number_/()
    > Number / := method(denum,if (denum == 0, 0, self \(denum)))
    ==> method(denum,
        if(denum == 0, 0, self \(denum))
    )

3. Write a programm to add up all of the numbers in a two dimensional array.

- See day2_table_sum

4. Add a slot calle myAverage to a list that computes the average of all numbers in a list.

- See day2_myaverage.io

5. Write a prototype fpr a two-dimensional list


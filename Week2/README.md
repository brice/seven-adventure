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







## Introduction

9 december 2013 : Let's start scala for still more fun.

### Day 1 : The castle on the Hill

Like all weeks, the first day define langage paradigm :
* Basic syntax
* Loops
* Creating class with polymorphic instanciation (see constructor.scala)
* Inheritance (see employee.scala)
* Traits (see nice.scala)

In this day we saw the object-oriented aspect of scala. Syntax is not so hard to understand from my PHP point of view but it's more strict than i am use to.

### Day 1 : Self study

#### Find

The scala API

* http://www.scala-lang.org/api/current/#package

A comparison of java and scala

* http://www.infoq.com/fr/articles/java-8-vs-scala

A discussion of val versus var

* http://stackoverflow.com/questions/1791408/what-is-the-difference-between-a-var-and-val-definition-in-scala So i think val is a like a constant (in fact it's an immutable variable)

### Do

* Write a Tic-Tac-Toe game

See day1/tictactoe.scala

### Day 2 : Clipping Bushes and Other New Tricks

In this second day, we start to learn the functional aspect of scala. For exemple we write this simple function and use it in console :

    scala> def double(x:Int):Int = x * 2
    double: (x: Int)Int

    scala> double(2)
    res0: Int = 4

In fact i already saw how to define function while working on my tic tac toe program, but they look more like the second form (don't forget that = is mandatory) :

    scala> def double(x:Int):Int = {
     | x*2
     | }
    double: (x: Int)Int

The variable definition is more strict than in PHP so this exemple will fail :

    scala> double(2.3)
    <console>:9: error: type mismatch;
    found   : Double(2.3)
    required: Int
              double(2.3)
                     ^

In day one we have to find a discussion of var versus val. In the second day, the author explain us the difference: var is mutable and val is immutable. You can't redeclare a val. Its seems important for the concurrency features (i hope to see why).

We also took a deeper look into collections : Lists, Set (very sweet stuff) or Maps. Then we learn what are Any and Nothing. Finally we deals with collection's functions and introduce the concept of *higher-order Functions* (it reminds me some javascript stuff).

Funny exemple :
    scala> val hobbits = Map("frodo" -> "hobbit",
     | "samwise" -> "hobbit",
     | "smaug" -> "dragon")
     hobbits: scala.collection.immutable.Map[java.lang.String,java.lang.String] = Map(frodo -> hobbit, samwise -> hobbit, smaug -> dragon)

     scala> hobbits.foreach(hobbit => if (hobbit._2 != "hobbit") {println(hobbit)})
     (smaug,dragon)

Unlike other languages and chapter, the second day made me rethink opf my code so i rewrited my Tic-tac-toe game to apply what i discovered this day. See ttt2.scala to see the new game.

#### Find

A discussion on how to use Scala files

* http://www.tutorialspoint.com/scala/scala_file_io.htm
* See scalaFile.scala for an exemple
* And completely different but kinda fun a discussion about scala compilation : http://www.scala-lang.org/old/node/166

What makes a closure different from a code block

* A closure is a code block that incorporated free variable that come from outside its own scope. Find here : http://www.javacodegeeks.com/2011/11/scala-tutorial-code-blocks-coding-style.html

#### Do

Use foldLeft to compute the total size of a list of strings

* See stringlist.scala

Write a Censor trait with a method that will replace the curse words *Shoot* and *Darn* with *Pucky* and *Beans* alternatives. Use a map to store the curse words and their alternatives.

* See censor.scala

Load the curse words and alternatives from a file

* See censorfile.scala

### Day 3 : Cutting through the Fluff

This final day explain some complex stuff that we could do with a simple progra in scala like :

* Parsing XML
* Pattern matching (see day3/chores.scala) with some embellishments (see day3/factorial.scala)
* Regular expression (exemple val ref = "the".r)
* Parsing XML with matching (see movies.scala, i tried to improve the book exemple)
* And concurrency
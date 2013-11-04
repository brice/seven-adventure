## Introduction

Let's start with the first Language : Ruby

### Day 1 : Finding a nanny

(Around one hour to read an make the exercices)

Ruby is an interpreted language, the basic syntax look like a lot of basic syntax of others language. Everything is an object in ruby.

Example of code

    # Get methods
    >> 4.methods

    # Get a class name
    >> true.class

Ruby allow to conditionnally execute code with if and unless (it's equivalent to a if ! statements) with multiline and one line.

Example

    >> puts 'this will never happen' if true == false

    >> puts 'this will never happen' unless true == true

    >> if true == false
    >>     puts 'this will never happen'
    >> end

It works with while and until

Example :

    >> x = x +1 while x < 10


And, by the way, 0 is true.

Ruby is duck typed and behave mostly to a strongly typed language. Is a free-spirited language.


### Day 1 : Self study

Find:

Finding the Ruby API : http://www.ruby-doc.org/

The free online version of Programming Ruby : http://ruby-doc.com/docs/ProgrammingRuby/

A method thats substitutes part of a string : String.sub (http://www.ruby-doc.org/core-1.9.3/String.html#method-i-sub)

Informations about ruby's regular expressions : http://www.ruby-doc.org/core-1.9.3/Regexp.html

Informations about Ruby's range : http://www.ruby-doc.org/core-1.9.3/Range.html


Do :

Print the string "Hello, World"

    >> puts 'Hello, World'


For the String "Hello, Ruby" find the index of the word "Ruby".

    >> "Hello, Ruby".index('Ruby')

Print your name ten times

    >> i = 0
    >> while i < 10
    >>     puts "Brice"
    >>     i = i +1
    >> end

Print the string This is sentence number 1 where the number 1 changes from 1 to 10

    >> i = 0
    >> while i < 10
    >>     i = i +1
    >>     puts "This is sentence number #{i}"
    >> end

Run a ruby program from a file.

    ruby day1.rb

In day1 you will find the bonus exercise

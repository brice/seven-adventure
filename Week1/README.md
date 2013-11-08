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

### Day 2 : Floating down from the sky

(Around two hours to read and answer to the Find Part)

Define a function in ruby is quite easy, and every function return something.

    >> def tell_the_truth
    >>     true
    >> end

The array's and hashes' behavior is pretty the same as in PHP evn if syntax differs. Notable differences like Range System or the possibility to get element from the end.

Ruby has very powerful systl of code block

    >> 3.times {puts "display it"}

Every class, except Object Class, inherit of one parent called a superclass. It's possible to write mixin to extends class behavior.

Some mixin are available directly in Ruby like enumerable or comparable

### Day 2 : Self Study

Find out how to acess files with and without code blocks. What is the benefit of the code block?

    >> File.open('my_file.txt', 'w+');
    >> file.puts 'This will be in my file';
    >> file.close

    >> File.open('my_other_file', 'w+') { |file|
        file.puts 'This will be in my file too'
    }

* I think the benefits is more easy to write and read.

How would you translate a hash to an Array?

    >> hash = {:string => 'test', :array => [1,2,3]}
    >> hash.to_a

Can you translate arrays to hashes ?

    >> res = Hash[hash]

Can you iterate through an hash ?

    res.each {|key,value|
        puts "#{key} => #{value}"
    }

You can use ruby as stacks. What other common data structures do arrays support?

    * queue, linked list, stack or set


### Day 3 : Serious change

OpenClass : To extends a class and create new function we just need to define function this way.

    >> class NilClass
    >>    def empty?
    >>        true
    >>    end
    >> end
    => nil
    >> nil.empty?
    => true

The method_missing will be ovverride to create generic function but it needs to used it wisely.
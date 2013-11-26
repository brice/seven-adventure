## Introduction

For the first week end (begin november the 25th) i start prolog, a language that i already learned before.

### Day 1 : An excellent driver

The analogy of this day is that we will use this language in a limited context. There is two implementation of prolog on ubuntu : GNU Prolog and SWI Prolog. The author used GNU Prolog

You can use both : sudo apt-get install grpolog swi-prolog

The only minor difference i saw at this time is that gprolog respond yes or no and swi-prolog true or false.

In prolog we write fact and rule

A simple fact

    likes(wallace, cheese).

A rule

    friend(X,Y) :- \+(X = Y), likes(X,Z), likes(Y,Z).

### Day 1 : Self study

Find :

Some free prolog tutorials (Google is your friend)

- http://www.csupomona.edu/~jrfisher/www/prolog_tutorial/contents.html
- http://www.learnprolognow.org/
- http://prolog.developpez.com/cours/

A support forum
- http://www.developpez.net/forums/f158/autres-langages/autres-langages/prolog/
- http://www.tek-tips.com/threadminder.cfm?pid=345

One online reference for the Prolog version you're using
- http://gprolog.univ-paris1.fr/manual/gprolog.html

Do :

Make a simple knowledge base. Represent some of your favorite books and authors.

- See book.pl and book like this

    book(X, 'JRR Tolkien').

Make a knowledge base representing musician and instruments. Also representes musicians and their genre of music

- See music.pl

Find all musicians who play the guitar

    musician(Who, 'Guitar').


# Search musician that plays Guitar.
# musician(Who, 'Guitart').

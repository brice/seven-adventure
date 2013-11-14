
fib := method(
    r := call evalArgAt(0)
    if (r <= 1, return r)
    return fib(r-1) + fib(r-2);
)

fib(0) println
fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
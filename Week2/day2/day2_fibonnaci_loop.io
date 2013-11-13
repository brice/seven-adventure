
fib := method(
    r := call evalArgAt(0)
    if (r == 1, return 1)

    array := list(1, 1)
    last := 1
    before := 1 
    tmp := 0
    for(i, 2, r-1, 
	array append(last+before); 
	tmp = last+before; 
	before = last ; 
        last = tmp
    )
    return last
    
)

fib(5) println


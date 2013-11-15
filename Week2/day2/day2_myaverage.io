List myAverage := method(
    nb := 0
    total := 0
    self foreach(v,
        itemType := v type
        if (itemType == "Number", total = total + v
        nb = nb + 1)
    )
    // if (nb == 0) then("bouh" println) else ("pas bouh" println)
    if (nb == 0) then (
        Exception raise("No number in this array")
    )
    (total / nb) println
)

e := try(

    myList := list(1, 3, "Toto", 4)
    myList myAverage

    myList = list("Toto")
    myList myAverage
)

e catch(Exception,
    writeln(e coroutine backTraceString)
)
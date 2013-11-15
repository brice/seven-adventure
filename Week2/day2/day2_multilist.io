
Multilist := Object clone

Multilist resultList := list

Multilist dim := method(x,y,
    self resultList = list()
    tmpList := list()
    for (i, 1, x,
        tmpList = list()
        for (j, 1, y,
            tmpList append("0")
        )
        self resultList append(tmpList)
    )
)

Multilist println := method(
    self resultList println
)

a := Multilist
a dim(3,6)
a println
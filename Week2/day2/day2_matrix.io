
Matrix := Object clone

Matrix localMatrix := list

Matrix dim := method(x,y,
    self localMatrix = list()
    tmpList := list()
    for (i, 1, x,
        tmpList = list()
        for (j, 1, y,
            tmpList append("0")
        )
        self localMatrix append(tmpList)
    )
)

Matrix set := method(x, y, value,
    list := self localMatrix at(x)
    list atPut(y, value)
    self localMatrix atPut(x, list)
)

Matrix get := method(x,y,
    list := self localMatrix at(x)
    return list at(y)
)

Matrix println := method(
    self localMatrix println
)

a := Matrix
a dim(3,6)
a println

a set(1,1,2)
a get(1,1) println

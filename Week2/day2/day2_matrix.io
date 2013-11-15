
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

Matrix println := method(
    self localMatrix println
)

a := Matrix
a dim(3,6)
a println
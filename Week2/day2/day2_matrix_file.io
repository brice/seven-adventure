
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
    self localMatrix foreach(v,
        v join(", ") println
    )
)


Matrix writeFile := method(
    f := File with("matrix.txt")
    f remove
    f openForUpdating
    self localMatrix foreach (v,
        f write(v join(","))
        f write("\n")
    )
    f close
)

Matrix readFile := method(
    f := File with("matrix.txt")
    self localMatrix = list()
    f open
    f readLines foreach(line,
        localMatrix append(line split(","))
    )
    f close
)

a := Matrix
a dim(3,6)

a readFile
"Read Matrix" println
a println
a set(0,1,2)
a set(1,1,2)
a set(0,0,2)
"Write Matrix" println
a println
a writeFile


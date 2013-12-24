val stringList = List("A", "b", "c", "d", "TOTO")

var size1 = stringList.foldLeft(0)((i, value) => i + value.length)

val size2 = (0 /: stringList) {(i, value) => i +  value.length}

if (size1 == size2) {
    println ("function match and the size is " + size1)
} else {
    println ("function doesn't match")
}
class Person() {
    println("Outer constructor")
    def this(firstName: String) {
        this()
        println("Constructor FirstName")
    }
    def this(firstName: String, lastName: String) {
        this()
        println("Constructor lastName")
    }
    def talk() = println("Hi")
}
val brice = new Person("Brice")
val briceFavre = new Person("Brice", "Favre")
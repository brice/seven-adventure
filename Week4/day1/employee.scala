class Person(val name: String) {
    def talk(message: String) = println(name + " says " + message)
    def id(): String = name
}

trait Nice {
    def greet() = println("Howdy")
}

class Employee(override val name: String,
                        val number: Int) extends Person(name) with Nice {

    override def talk(message: String) {
        println(name + " with number " + number + " says \"" + message + "\"")
    }
    override def id():String = number.toString
}

val employee = new Employee("Yoda", 4)


employee.talk("Scala syntax learn you must")
employee.greet
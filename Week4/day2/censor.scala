trait Censor {
    val ReplaceMap = Map("Shoot" -> "Pucky",
    "Darn" -> "Beans")

    def replace(Text:String) : String = {
        var response = Text

        ReplaceMap.foreach{item =>
             response = response.replaceAll(item._1, item._2)
        }

        return response
    }
}

class PoliteText extends Censor

var politer = new PoliteText()

val text = "Shoot Darn and Leave!"

println(text)
println(politer.replace(text))
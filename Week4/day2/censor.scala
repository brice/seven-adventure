trait Censor {
    val ReplaceMap = Map("Shoot" -> "Pucky",
    "Darn" -> "Beans")

    def replace(Text:String) {
        var response = Text
        ReplaceMap.foreach{item =>
             response = response.replaceAll(item._1, item._2)
        }
        println(response)
    }
}

class Text(val text:String) extends Censor {
    replace(text)
}

new Text("Shoot Darn and Leave!")


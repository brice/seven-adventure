import scala.io.Source._

trait Censor {
    var ReplaceMap = Map("Shoot" -> "Pucky",
    "Darn" -> "Beans")

    def replace(Text:String) : String = {
        var response = Text

        ReplaceMap.foreach{item =>
             response = response.replaceAll(item._1, item._2)
        }

        return response
    }

    def setReplaceMap(newReplaceMap : Map[String, String]) = {
        ReplaceMap = newReplaceMap
    }
}

class PoliteText extends Censor

var cursesFromFile = Map.empty[String, String]

fromFile("curseWords.txt").getLines.foreach { line =>
    val curseWordPair = line.split(',')
    if(curseWordPair.length == 2) {
        cursesFromFile += ("(?i)" + curseWordPair(0).trim) -> curseWordPair(1).trim
    }
}

var politer = new PoliteText()
val text = "Shoot Darn and Leave!"

println(text)
println(politer.replace(text))

politer.setReplaceMap(cursesFromFile)
println(politer.replace(text))





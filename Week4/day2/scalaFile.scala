/**
 * Import info for reading/writing file
 */
import java.io._
import scala.io.Source

object ReadWrite {
    def main(args: Array[String]) {
        val writer = new PrintWriter(new File("test.txt" ))

        println("We write content" )
        writer.write("Hello Scala")
        writer.close()

        println("Following is the content read:" )
        Source.fromFile("test.txt" ).foreach{
         print
        }
        println("")
        println("Done")
   }
}
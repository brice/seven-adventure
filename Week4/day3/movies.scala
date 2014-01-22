// Defintion of the XML val
val movies = <movies>
    <movie>The incredibles<director>Test</director></movie>
    <movie>WALL E</movie>
    <movie>Nemo</movie>
    <short>Jack Jack Attack</short>
</movies>

(movies \ "_").foreach { movie =>
    movie match {
        case <movie>{movieName}<director>{director}</director></movie> => println(movieName + " directed by " + director)
        case <movie>{movieName}</movie> => println(movieName)
        case <short>{movieName}</short> => println(movieName + " (short) ")
    }
}
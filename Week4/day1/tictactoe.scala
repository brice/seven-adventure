
class Board() {
    var values = Array(Array(" "," "," "),Array(" "," "," "),Array(" "," "," "))

    /**
     * Print board
     */
    def print() {
        values.foreach { arg =>
            //arg.mkString(" - ")
            println(arg.mkString(" | "))
        }
    }

    /**
     * Set a value on the board
     */
    def set(X: Int, Y: Int, V: String): Boolean = {
        if (X < 0 || X > 2 || Y < 0 || Y > 2) {
            throw new IllegalArgumentException("Wrong argument")
        }
        if (values(X)(Y) != " ") {
            false
        } else {
            values(X)(Y) = V
            true
        }
    }

    /**
     * Test Lines, Colons and Diagonals
     */
    def test():Boolean = {
        var response = false

        // We test lines
        values.foreach{line =>
            if (testSeq(line) == true) {
                // Search for beaking
                response = true
            }
        }
        // We test colons
        var cols = Array(" ", " ", " ")
        for (i <- 0 until 3) {
            cols = Array(values(0)(i), values(1)(i), values(2)(i));
            if (testSeq(cols) == true) {
                response = true
            }
        }
        // Finally we test diagonal
        var diag = Array(values(0)(0), values(1)(1), values(2)(2));
        if (testSeq(diag) == true) {
            response = true
        }
        diag = Array(values(0)(2), values(1)(1), values(2)(0));
        if (testSeq(diag) == true) {
            response = true
        }
        if (response == true) {
            true
        } else {
            false
        }
    }

    /**
     * Test a sequence of three item
     */
    def testSeq(Seq: Array[String]): Boolean = {
        var base = Seq(0)
        var response = true
        if (base == " ") {
            false
        } else {
            Seq.foreach { item =>
                if (item != base) {
                    response = false
                }
            }
            if (response == true) {
                true
            } else {
                false
            }
        }
    }

    /**
     * Test if board is full
     */
    def full(): Boolean = {
        var response = true
        values.foreach { line =>
            // I'm sure there's a better solution
            line.foreach{ item =>
                if (item == " ") {
                    response = false
                }
            }
        }
        response
    }
}

class TicTacToe() {
    /**
     * Define TicTacToe board, current player and start the game
     */
    var board = new Board()
    var currentPlayer = "X"
    println("Start game for player " + currentPlayer)
    board.print()

    /**
     * Play function
     * X : X value in the board
     * Y : Y value in the board
     */
    def playAt(X: Int,Y: Int) {
        if (board.set(X, Y, currentPlayer)) {
            println (currentPlayer + " played and now the boards look like this")
            board.print()
            switchPlayer()
        } else {
            println ("Sorry " + currentPlayer + " this place is already taken")
        }

    }

    /**
     * Switch current player
     */
    def switchPlayer() {
        if (currentPlayer == "X") {
            currentPlayer = "O"
        } else {
            currentPlayer = "X"
        }
    }

    /**
     * Reset game
     */
    def reset() {
        var board = new Board
        var currentPlayer = "X"
        println("New game ")
        board.print()
    }


    /**
     * Print play message and ask for cols/line
     */
    def play() {
        println(currentPlayer + " make your move and tell me the line where you want to play")

        var X = readInt()
        while (X < 0 || X > 2) {
            println("No way,this move can't be played")
            println(currentPlayer + " make your move")
            X = readInt()
        }
        println(currentPlayer + " make your move and tell me the colon   where you want to play")
        var Y = readInt()
        while (Y < 0 || Y > 2) {
            println("No way,this move can't be played")
            println(currentPlayer + " make your move")
            Y = readInt()
        }
        playAt(X, Y)
    }

    /**
     * Starting game
     */
    def start() {
        play()
        while (! board.test() && ! board.full()) {
            play()
        }

        if (board.full()) {
            println("Nobody wins!")
        } else {
            // We return to previous player
            switchPlayer()
            println(currentPlayer + " wins!")
        }

    }
}

val game = new TicTacToe()
game.start()
class TicTacToe() {
    /**
     * Define TicTacToe board, current player and start the game
     */
    var board= Array(Array("","",""),Array("","",""),Array("","",""))
    var currentPlayer = "X"
    println("Start game for player " + currentPlayer)
    print()
    
    
    /**
     * Print board
     */
    def print() {
        board.foreach { arg => 
            //arg.mkString(" - ")
            println(arg.mkString(" | "))
        }
    }
    
    /**
     * Play function
     * X : X value in the board
     * Y : Y value in the board
     */
    def playAt(X: Int,Y: Int) {
        board(X)(Y) = currentPlayer
        println (currentPlayer + " played and now the boards look like this")
        print()
        switchPlayer()
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
        var board= Array(Array("","",""),Array("","",""),Array("","",""))
        var currentPlayer = "X"
        println("New game ")
        print()
    }
    
}

val game = new TicTacToe()
game.playAt(1,1)
game.playAt(0,1)

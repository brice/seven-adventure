class TicTacToe(val board: List[String]) {
    def print {
        board.foreach { arg => 
            println(arg)
        }
    }
}

val board = new TicTacToe(List
    (List("X","X","O"),
    List("0","X","O"),
    List("0","0","X"))
);
board.print

// Solved by Xecca

//1275. Find Winner on a Tic Tac Toe Game
//Сomplexity: Easy
//https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Find Winner on a Tic Tac Toe Game.
//Memory Usage: 14 MB, less than 98.25% of Swift online submissions for Find Winner on a Tic Tac Toe Game.
//----------------------------------------------------

//Tic-tac-toe is played by two players A and B on a 3 x 3 grid.
//
//Here are the rules of Tic-Tac-Toe:
//
//Players take turns placing characters into empty squares (" ").
//The first player A always places "X" characters, while the second player B always places "O" characters.
//"X" and "O" characters are always placed into empty squares, never on filled ones.
//The game ends when there are 3 of the same (non-empty) character filling any row, column, or diagonal.
//The game also ends if all squares are non-empty.
//No more moves can be played if the game is over.
//Given an array moves where each element is another array of size 2 corresponding to the row and column of the grid where they mark their respective character in the order in which A and B play.
//
//Return the winner of the game if it exists (A or B), in case the game ends in a draw return "Draw", if there are still movements to play return "Pending".
//
//You can assume that moves is valid (It follows the rules of Tic-Tac-Toe), the grid is initially empty and A will play first.

//----------------------------------------------------

func tictactoe(_ moves: [[Int]]) -> String {
    var field = [[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]]
    var i = 0
    
    while i < moves.count {
        if i % 2 == 0 {
            field[moves[i][0]][moves[i][1]] = 1 // X
        } else {
            field[moves[i][0]][moves[i][1]] = 5 // O
        }
        i += 1
    }
    
        let sumOfWinner = checkWinner(field)
        if sumOfWinner == 3 {
            return "A"
        } else if sumOfWinner == 15 {
            return "B"
        } else if moves.count == 9 {
            return "Draw"
        } else {
            return "Pending"
        }
}

func checkWinner(_ field: [[Int]]) -> Int {
    var sumOfWinner = 0
    //check horizontals
    if field[0][0] + field[1][1] + field[2][2] == 3 || field[0][2] + field[1][1] + field[2][0] == 3 {
        return 3
    } else if field[0][0] + field[1][1] + field[2][2] == 15 || field[0][2] + field[1][1] + field[2][0] == 15 {
        return 15
    } else {
        sumOfWinner += checkHorizontalSum(field)
        if sumOfWinner == 3 || sumOfWinner == 15 {
            return sumOfWinner
        } else {
            sumOfWinner = checkVerticalSum(field)
            if sumOfWinner == 3 || sumOfWinner == 15 {
                return sumOfWinner
            }
        }
    }
    
    return 0
}

func checkHorizontalSum(_ field: [[Int]]) -> Int {
    var r = 0
    var c = 0
    var sumOfWinner = 0
    
    while r < 3 {
        while c < 3 {
            sumOfWinner += field[r][c]
            c += 1
        }
        if sumOfWinner == 3 || sumOfWinner == 15 {
            return sumOfWinner
        } else {
            sumOfWinner = 0
        }
        r += 1
        c = 0
    }
    
    return sumOfWinner
}

func checkVerticalSum(_ field: [[Int]]) -> Int {
    var r = 0
    var c = 0
    var sumOfWinner = 0
    
    while c < 3 {
        while r < 3 {
            sumOfWinner += field[r][c]
            r += 1
        }
        if sumOfWinner == 3 || sumOfWinner == 15 {
            return sumOfWinner
        } else {
            sumOfWinner = 0
        }
        c += 1
        r = 0
    }
    
    return sumOfWinner
}

//Example 1:
//Input:
let moves = [[0,0],[2,0],[1,1],[2,1],[2,2]]
//Output: "A"
//Explanation: "A" wins, he always plays first.
//"X  "    "X  "    "X  "    "X  "    "X  "
//"   " -> "   " -> " X " -> " X " -> " X "
//"   "    "O  "    "O  "    "OO "    "OOX"
//Example 2:
//Input:
//let moves = [[0,0],[1,1],[0,1],[0,2],[1,0],[2,0]]
//Output: "B"
//Explanation: "B" wins.
//"X  "    "X  "    "XX "    "XXO"    "XXO"    "XXO"
//"   " -> " O " -> " O " -> " O " -> "XO " -> "XO "
//"   "    "   "    "   "    "   "    "   "    "O  "
//Example 3:
//Input:
//let moves = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
//Output: "Draw"
//Explanation: The game ends in a draw since there are no moves to make.
//"XXO"
//"OOX"
//"XOX"
//Example 4:
//Input:
//let moves = [[1,0],[2,2],[2,0],[0,1],[1,1]]
//Output: "Pending"
//Explanation: The game has not finished yet.
//"X  "
//" O "
//"   "

tictactoe(moves)


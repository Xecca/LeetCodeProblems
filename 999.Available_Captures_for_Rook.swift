//999. Available Captures for Rook
//Сomplexity: Easy
//https://leetcode.com/problems/minimum-absolute-difference/
//----------------------------------------------------
//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Available Captures for Rook.
//Memory Usage: 21.1 MB, less than 77.78% of Swift online submissions for Available Captures for Rook.
//----------------------------------------------------
//On an 8 x 8 chessboard, there is one white rook.  There also may be empty squares, white bishops, and black pawns.  These are given as characters 'R', '.', 'B', and 'p' respectively. Uppercase characters represent white pieces, and lowercase characters represent black pieces.
//
//The rook moves as in the rules of Chess: it chooses one of four cardinal directions (north, east, west, and south), then moves in that direction until it chooses to stop, reaches the edge of the board, or captures an opposite colored pawn by moving to the same square it occupies.  Also, rooks cannot move into the same square as other friendly bishops.
//
//Return the number of pawns the rook can capture in one move.
//----------------------------------------------------

func numRookCaptures(_ board: [[Character]]) -> Int {
    
    let rookPosition = findRookPosition(board)
    
    return (checkRow(rookPosition[1], board[rookPosition[0]])) + (checkColumn(rookPosition, board))
}

func findRookPosition(_ board: [[Character]]) -> [Int] {
    var i = 0
    var j = 0
    
    while i < 8 {
        j = 0
        while j < 8 {
            if board[i][j] == "R" {
                return [i, j]
            }
            j += 1
        }
        i += 1
    }
    
    return [0, 0]
}

func checkRow(_ coordinateFigure: Int, _ row: [Character]) -> Int {
    var countCapturedPawns = 0
    var i = coordinateFigure + 1
    
    while i < 8 {
        if row[i] == "p" {
            countCapturedPawns += 1
            break
        } else if row[i] != "." && row[i] != "," {
            break
        }
        i += 1
    }
    i = coordinateFigure - 1
    while i >= 0 {
        if row[i] == "p" {
            countCapturedPawns += 1
            break
        } else if row[i] != "." && row[i] != "," {
            break
        }
        i -= 1
    }
    
    return countCapturedPawns
}

func checkColumn(_ rookPosition: [Int], _ board: [[Character]]) -> Int {
    var countCapturedPawns = 0
    var i = rookPosition[0] + 1
    let j = rookPosition[1]
    
    while i < 8 {
        if board[i][j] == "p" {
            countCapturedPawns += 1
            break
        } else if board[i][j] != "." && board[i][j] != "," {
            break
        }
        i += 1
    }
    i = rookPosition[0] - 1
    while i >= 0 {
        if board[i][j] == "p" {
            countCapturedPawns += 1
            break
        } else if board[i][j] != "." && board[i][j] != "," {
            break
        }
        i -= 1
    }
    
    return countCapturedPawns
}

//Input:
let board: [[Character]] = [[".",".",".",".",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".","p",".",".",".","."],["p","p",".","R",".","p","B","."],[".",".",".",".",".",".",".","."],[".",".",".","B",".",".",".","."],[".",".",".","p",".",".",".","."],[".",".",".",".",".",".",".","."]]
//Output: 3
//Explanation:
//In this example the rook is able to capture all the pawns.

numRookCaptures(board)


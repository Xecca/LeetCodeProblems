// Solved by Xecca

//1812. Determine Color of a Chessboard Square
//Difficult: Easy
//https://leetcode.com/problems/determine-color-of-a-chessboard-square/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Determine Color of a Chessboard Square.
//Memory Usage: 13.8 MB, less than 100.00% of Swift online submissions for Determine Color of a Chessboard Square.


//

//You are given coordinates, a string that represents the coordinates of a square of the chessboard. Below is a chessboard for your reference.
//
//Return true if the square is white, and false if the square is black.
//
//The coordinate will always represent a valid chessboard square. The coordinate will always have the letter first, and the number second.
//
//Constraints:
//
//coordinates.length == 2
//'a' <= coordinates[0] <= 'h'
//'1' <= coordinates[1] <= '8'

//

func squareIsWhite(_ coordinates: String) -> Bool {
    let x = ["a" : 1, "b" : 2, "c" : 3, "d" : 4, "e" : 5, "f" : 6, "g" : 7, "h": 8]
    
    if (x[String(coordinates[String.Index(utf16Offset: 0, in: coordinates)])]! + Int(coordinates[String.Index(utf16Offset: 1, in: coordinates)].asciiValue! - 48)) % 2 == 0 {
        return false
    }
    
    return true
}

//Example 1:
//
//Input: coordinates = "a1"
//Output: false
//Explanation: From the chessboard above, the square with coordinates "a1" is black, so return false.
//Example 2:
//
//Input: coordinates = "h3"
//Output: true
//Explanation: From the chessboard above, the square with coordinates "h3" is white, so return true.
//Example 3:
//
//Input: coordinates = "c7"
//Output: false

//Test cases:

if squareIsWhite("h3") == true { print("Correct!") } else { print("Error! Expected: \(true)") }


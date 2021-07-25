// Solved by Xecca

//1582. Special Positions in a Binary Matrix
//Difficult: Easy
//https://leetcode.com/problems/special-positions-in-a-binary-matrix/

//Runtime: 120 ms, faster than 100.00% of Swift online submissions for Special Positions in a Binary Matrix.
//Memory Usage: 14.2 MB, less than 42.86% of Swift online submissions for Special Positions in a Binary Matrix.

//

//Given a rows x cols matrix mat, where mat[i][j] is either 0 or 1, return the number of special positions in mat.
//
//A position (i,j) is called special if mat[i][j] == 1 and all other elements in row i and column j are 0 (rows and columns are 0-indexed).
//
//Constraints:
//
//rows == mat.length
//cols == mat[i].length
//1 <= rows, cols <= 100
//mat[i][j] is 0 or 1.

//

func numSpecial(_ mat: [[Int]]) -> Int {
    var colSum = 0
    var countSpecialNum = 0
    var r = 0
    var c = 0
    var rTemp = 0
    let rowCount = mat.count
    
    while r < rowCount {
        if mat[r].reduce(0, +) == 1 {
            c = 0
            while mat[r][c] != 1 {
                c += 1
            }
            rTemp = 0
            colSum = 0
            while rTemp < rowCount && colSum < 2 {
                colSum += mat[rTemp][c]
                rTemp += 1
            }
            if colSum == 1 {
                countSpecialNum += 1
            }
        }
        r += 1
    }
    
    return countSpecialNum
}

//Example 1:
//
//Input: mat = [[1,0,0],
//              [0,0,1],
//              [1,0,0]]
//Output: 1
//Explanation: (1,2) is a special position because mat[1][2] == 1 and all other elements in row 1 and column 2 are 0.
//Example 2:
//
//Input: mat = [[1,0,0],
//              [0,1,0],
//              [0,0,1]]
//Output: 3
//Explanation: (0,0), (1,1) and (2,2) are special positions.
//Example 3:
//
//Input: mat = [[0,0,0,1],
//              [1,0,0,0],
//              [0,1,1,0],
//              [0,0,0,0]]
//Output: 2
//Example 4:
//
//Input: mat = [[0,0,0,0,0],
//              [1,0,0,0,0],
//              [0,1,0,0,0],
//              [0,0,1,0,0],
//              [0,0,0,1,1]]
//Output: 3

//Test cases:

if numSpecial([[1,0,0],[0,1,0],[0,0,1]]) == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }


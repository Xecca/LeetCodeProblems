// Solved by Xecca

import Foundation

//59. Spiral Matrix II
//Difficult: Medium
//https://leetcode.com/problems/spiral-matrix-ii/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Spiral Matrix II.
//Memory Usage: 14 MB, less than 74.58% of Swift online submissions for Spiral Matrix II.

//
//Given a positive integer n, generate an n x n matrix filled with elements from 1 to n2 in spiral order.
//
//Constraints:
//
//1 <= n <= 20

//

func generateMatrix(_ n: Int) -> [[Int]] {
    var matrix: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: n)
    var startPosition = 0
    var row = 0
    var i = 1
    let lastNum = n * n
    
    while i <= lastNum {
        moveToRight(&matrix, &startPosition, n, &row, &i)
        moveDown(&matrix, &startPosition, n, &row, &i)
        moveToLeft(&matrix, &startPosition, &row, &i)
        moveUp(&matrix, &startPosition, &row, &i)
    }
    
    return matrix
}

func moveToRight(_ matrix: inout [[Int]], _ currPos: inout Int, _ limiter: Int, _ row: inout Int, _ i: inout Int) {
    while currPos < limiter && matrix[row][currPos] == 0 {
        matrix[row][currPos] = i
        i += 1
        currPos += 1
    }
    currPos -= 1
    row += 1
}
func moveDown(_ matrix: inout [[Int]], _ currPos: inout Int, _ limiter: Int, _ row: inout Int, _ i: inout Int) {
    while row < limiter && matrix[row][currPos] == 0 {
        matrix[row][currPos] = i
        i += 1
        row += 1
    }
    row -= 1
    currPos -= 1
}
func moveToLeft(_ matrix: inout [[Int]], _ currPos: inout Int, _ row: inout Int, _ i: inout Int) {
    while currPos >= 0 && matrix[row][currPos] == 0 {
        matrix[row][currPos] = i
        i += 1
        currPos -= 1
    }
    row -= 1
    currPos += 1
}
func moveUp(_ matrix: inout [[Int]], _ currPos: inout Int, _ row: inout Int, _ i: inout Int) {
    while row > 0 && matrix[row][currPos] == 0 {
        matrix[row][currPos] = i
        i += 1
        row -= 1
    }
    row += 1
    currPos += 1
}

//Example 1:
//
//Input: n = 3
//Output: [[1,2,3],[8,9,4],[7,6,5]]
//Example 2:
//
//Input: n = 1
//Output: [[1]]

//Test cases:

let input = 3
let answer = [[1,2,3],[8,9,4],[7,6,5]]

if generateMatrix(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


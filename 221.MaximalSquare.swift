// Solved by Xecca

import Foundation

//221. Maximal Square
//Difficult: Medium
//https://leetcode.com/problems/maximal-square/

//Runtime: 172 ms, faster than 39.13% of Swift online submissions for Maximal Square.
//Memory Usage: 15 MB, less than 46.74% of Swift online submissions for Maximal Square.
    
//

//Given an m x n binary matrix filled with 0's and 1's, find the largest square containing only 1's and return its area.
//
//Constraints:
//
//m == matrix.length
//n == matrix[i].length
//1 <= m, n <= 300
//matrix[i][j] is '0' or '1'.

//

func maximalSquare(_ matrix: [[Character]]) -> Int {
    var r = 0
    var c = 0
    let rowCount = matrix.count
    let columnCount = matrix[0].count
    var maxSquare = 0
    
    while r < rowCount {
        c = 0
        while c < columnCount {
            let checkedMaxSquare = checkSquare(r, c, matrix)
            
            if checkedMaxSquare > maxSquare {
                maxSquare = checkedMaxSquare
            }
            c += 1
        }
        if maxSquare >= rowCount - r {
            return maxSquare * maxSquare
        }
        r += 1
    }
    
    return maxSquare * maxSquare
}

func checkSquare(_ row: Int, _ column: Int, _ matrix: [[Character]]) -> Int {
    if matrix[row][column] == "0" {
        return 0
    }
    
    var maxSquare = 1
    var squareSide = 1
    var r = row
    var c = column
    let rowCount = matrix.count
    let columnCount = matrix[0].count
    
    while squareSide + row <= rowCount && squareSide + column <= columnCount {
        r = row
        while r < rowCount && r < row + squareSide {
            c = column
            while c < columnCount && c < column + squareSide {
                if matrix[r][c] == "0" {
                    return maxSquare
                }
                c += 1
            }
            r += 1
        }
        maxSquare = squareSide
        squareSide += 1
    }
    
    return maxSquare
}

//Example 1:
//
//Input: matrix = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
//Output: 4
//Example 2:
//
//Input: matrix = [["0","1"],["1","0"]]
//Output: 1
//Example 3:
//
//Input: matrix = [["0"]]
//Output: 0

//Test cases:

let input = [["1","0","1","0","0"],["1","0","1","1","1"],["1","1","1","1","1"],["1","0","0","1","0"]]
let answer = 4

if maximalSquare(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


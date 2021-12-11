// Solved by Xecca

import Foundation

//1329. Sort the Matrix Diagonally
//Difficult: Medium
//https://leetcode.com/problems/sort-the-matrix-diagonally/

//Runtime: 52 ms, faster than 100.00% of Swift online submissions for Sort the Matrix Diagonally.
//Memory Usage: 14.3 MB, less than 88.24% of Swift online submissions for Sort the Matrix Diagonally.
    
//

//A matrix diagonal is a diagonal line of cells starting from some cell in either the topmost row or leftmost column and going in the bottom-right direction until reaching the matrix's end. For example, the matrix diagonal starting from mat[2][0], where mat is a 6 x 3 matrix, includes cells mat[2][0], mat[3][1], and mat[4][2].
//
//Given an m x n matrix mat of integers, sort each matrix diagonal in ascending order and return the resulting matrix.
//
//Constraints:
//
//m == mat.length
//n == mat[i].length
//1 <= m, n <= 100
//1 <= mat[i][j] <= 100

//

func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
    let row = mat.count
    let column = mat[0].count
    var newMat = mat
    
    var leftSideRowInd = row - 1
    let leftSideColInd = column - 1
    
    while leftSideRowInd >= 0 {
        var r = leftSideRowInd
        var c = 0
        var tempArr: [Int] = []
        
        while r < row && c < column {
            tempArr.append(newMat[r][c])
            r += 1
            c += 1
        }
        r -= 1
        c -= 1
        tempArr = tempArr.sorted()
        var i = tempArr.count - 1
        
        while r >= leftSideRowInd && c >= 0 {
            newMat[r][c] = tempArr[i]
            i -= 1
            r -= 1
            c -= 1
        }
        leftSideRowInd -= 1
    }
    var rightSideColInd = 0
    
    while rightSideColInd <= leftSideColInd {
        var r = 0
        var c = rightSideColInd
        var tempArr: [Int] = []
        
        while r < row && c < column {
            tempArr.append(newMat[r][c])
            r += 1
            c += 1
        }
        r -= 1
        c -= 1
        tempArr = tempArr.sorted()
        var i = tempArr.count - 1
        
        while r >= 0 && c >= rightSideColInd {
            newMat[r][c] = tempArr[i]
            i -= 1
            r -= 1
            c -= 1
        }
        rightSideColInd += 1
    }
    
    return newMat
}

//Example 1:
//
//Input: mat = [[3,3,1,1],[2,2,1,2],[1,1,1,2]]
//Output: [[1,1,1,1],[1,2,2,2],[1,2,3,3]]
//Example 2:
//
//Input: mat = [[11,25,66,1,69,7],[23,55,17,45,15,52],[75,31,36,44,58,8],[22,27,33,25,68,4],[84,28,14,11,5,50]]
//Output: [[5,17,4,1,52,7],[11,11,25,45,8,69],[14,23,25,44,58,15],[22,27,31,36,50,66],[84,28,75,33,55,68]]

//Test cases:

let input = [[11,25,66,1,69,7],[23,55,17,45,15,52],[75,31,36,44,58,8],[22,27,33,25,68,4],[84,28,14,11,5,50]]
let answer = [[5,17,4,1,52,7],[11,11,25,45,8,69],[14,23,25,44,58,15],[22,27,31,36,50,66],[84,28,75,33,55,68]]

if diagonalSort(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


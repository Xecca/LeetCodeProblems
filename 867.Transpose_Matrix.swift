//867. Transpose Matrix
//Сomplexity: Easy
//https://leetcode.com/problems/transpose-matrix/
//----------------------------------------------------
//Runtime: 92 ms, faster than 100.00% of Swift online submissions for Transpose Matrix.
//Memory Usage: 21.6 MB, less than 30.77% of Swift online submissions for Transpose Matrix.
//----------------------------------------------------

//Given a matrix A, return the transpose of A.
//
//The transpose of a matrix is the matrix flipped over it's main diagonal, switching the row and column indices of the matrix.

//----------------------------------------------------

func transpose(_ A: [[Int]]) -> [[Int]] {
    let width = A.count
    let height = A[0].count
    var newMatrix = Array(repeating: Array(repeating: 0, count: width), count: height)
    var i = 0
    var j = 0
    
    if width == height {
        while i < width {
            j = 0
            while j < height && j < width {
                newMatrix[i][j] = A[j][i]
            }
            i += 1
        }
    } else {
        while i < height {
            j = 0
            while j < width {
                newMatrix[i][j] = A[j][i]
                j += 1
            }
            i += 1
        }
    }
    
    return newMatrix
}

//Example 1:
//
//Input:
let A = [[5],[8]]
//Output: [[1,4,7],[2,5,8],[3,6,9]]

transpose(A)


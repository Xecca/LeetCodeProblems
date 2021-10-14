// Solved by Xecca

//498. Diagonal Traverse
//Difficult: Medium
//https://leetcode.com/problems/diagonal-traverse/

//Runtime: 192 ms, faster than 92.31% of Swift online submissions for Diagonal Traverse.
//Memory Usage: 14.9 MB, less than 100.00% of Swift online submissions for Diagonal Traverse.

//

//Given an m x n matrix mat, return an array of all the elements of the array in a diagonal order.
//
//Constraints:
//
//m == mat.length
//n == mat[i].length
//1 <= m, n <= 10^4
//1 <= m * n <= 10^4
//-10^5 <= mat[i][j] <= 10^5

//

func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
    let diagonals = mat.count + mat[0].count - 1
    var currDiag = 0
    var r = 0
    var c = 0
    var finalArr: [Int] = []
    
    while currDiag < diagonals {
        finalArr += extractDiag(mat, r, c, currDiag)
        if c != mat[0].count - 1 {
            c += 1
        } else {
            r += 1
        }
        currDiag += 1
    }
    
    return finalArr
}

func extractDiag(_ mat: [[Int]], _ r: Int, _ c: Int, _ currDiag: Int) -> [Int] {
    var rL = r
    var cL = c
    var diag: [Int] = []
    
    while cL >= 0 && rL <= mat.count - 1 {
        if currDiag % 2 == 0 {
            diag.insert(mat[rL][cL], at: 0)
        } else {
            diag.append(mat[rL][cL])
        }
        rL += 1
        cL -= 1
    }
    
    return diag
}

//

//Example 1:
//
//Input: mat = [[1,2,3],[4,5,6],[7,8,9]]
//Output: [1,2,4,7,5,3,6,8,9]
//Example 2:
//
//Input: mat = [[1,2],[3,4]]
//Output: [1,2,3,4]

//Test cases:

if findDiagonalOrder([[1,2,3],[4,5,6],[7,8,9]]) == [1,2,4,7,5,3,6,8,9] { print("Correct!") } else { print("Error! Expexted: \([1,2,4,7,5,3,6,8,9])") }


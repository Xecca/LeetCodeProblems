// Solved by Xecca

//1572. Matrix Diagonal Sum
//Сomplexity: Easy
//https://leetcode.com/problems/matrix-diagonal-sum/

//----------------------------------------------------
//Runtime: 96 ms, faster than 98.86% of Swift online submissions for Matrix Diagonal Sum.
//Memory Usage: 20.8 MB, less than 72.73% of Swift online submissions for Matrix Diagonal Sum.
//----------------------------------------------------

//Given a square matrix mat, return the sum of the matrix diagonals.
//
//Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.

//----------------------------------------------------

func diagonalSum(_ mat: [[Int]]) -> Int {
    var sum = 0
    var i = 0
    var j = mat[0].count - 1
    
    for row in mat {
        sum += row[i] + row[j]
        i += 1
        j -= 1
    }
    
    if mat.count % 2 != 0 {
        let middleMat = mat.count / 2
        sum -= mat[middleMat][middleMat]
    }
    
    return sum
}

//Input:
let mat = [[1,2,3],
           [4,5,6],
           [7,8,9]]
//Output: 25
//Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
//Notice that element mat[1][1] = 5 is counted only once.

diagonalSum(mat)


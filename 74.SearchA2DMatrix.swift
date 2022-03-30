// Solved by Xecca

import Foundation

//74. Search a 2D Matrix
//Difficult: Medium
//https://leetcode.com/problems/search-a-2d-matrix/

//Runtime: 16 ms, faster than 99.26% of Swift online submissions for Search a 2D Matrix.
//Memory Usage: 14.2 MB, less than 62.50% of Swift online submissions for Search a 2D Matrix.

//
//Write an efficient algorithm that searches for a value target in an m x n integer matrix matrix. This matrix has the following properties:
//
//Integers in each row are sorted from left to right.
//The first integer of each row is greater than the last integer of the previous row.
//
//Constraints:
//
//m == matrix.length
//n == matrix[i].length
//1 <= m, n <= 100
//-10^4 <= matrix[i][j], target <= 10^4

//

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    for row in matrix {
        if row.last ?? 0 >= target {
            return row.contains(target)
        }
    }
    
    return false
}

//Example 1:
//
//Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
//Output: true
//Example 2:
//
//Input: matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 13
//Output: false

//Test cases:

let input = [[1,3,5,7],[10,11,16,20],[23,30,34,60]], target = 3
let answer = true

if searchMatrix(input, target) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


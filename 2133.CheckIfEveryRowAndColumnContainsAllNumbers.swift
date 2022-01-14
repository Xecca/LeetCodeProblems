// Solved by Xecca

import Foundation

//2133. Check if Every Row and Column Contains All Numbers
//Difficult: Easy
//https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers/

//Runtime: 1360 ms, faster than 66.07% of Swift online submissions for Check if Every Row and Column Contains All Numbers.
//Memory Usage: 14.2 MB, less than 85.71% of Swift online submissions for Check if Every Row and Column Contains All Numbers.

//

//An n x n matrix is valid if every row and every column contains all the integers from 1 to n (inclusive).
//
//Given an n x n integer matrix matrix, return true if the matrix is valid. Otherwise, return false.
//
//Constraints:
//
//n == matrix.length == matrix[i].length
//1 <= n <= 100
//1 <= matrix[i][j] <= n

//

func checkValid(_ matrix: [[Int]]) -> Bool {
    let n = matrix.count
    var arr: [Int] = []

    for row in matrix {
        arr = Array(repeating: 1, count: n)
        for num in row {
            if arr[num - 1] == 0 {
                return false
            }
            arr[num - 1] = 0
        }
    }
    var i = 0
    var j = 0
    
    while i < n {
        arr = Array(repeating: 1, count: n)
        j = 0
        while j < n {
            if arr[matrix[j][i] - 1] == 0 {
                return false
            }
            arr[matrix[j][i] - 1] = 0
            j += 1
        }
        i += 1
    }
    
    return true
}

//Example 1:
//
//Input: matrix = [[1,2,3],[3,1,2],[2,3,1]]
//Output: true
//Explanation: In this case, n = 3, and every row and column contains the numbers 1, 2, and 3.
//Hence, we return true.
//Example 2:
//
//Input: matrix = [[1,1,1],[1,2,3],[1,2,3]]
//Output: false
//Explanation: In this case, n = 3, but the first row and the first column do not contain the numbers 2 or 3.
//Hence, we return false.

//Test cases:

let input = [[1,1,1],[1,2,3],[1,2,3]]
let answer = false

if checkValid(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


// Solved by Xecca

//118. Pascal's Triangle
//Сomplexity: Easy
//https://leetcode.com/problems/pascals-triangle/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Pascal's Triangle.
//Memory Usage: 14 MB, less than 98.14% of Swift online submissions for Pascal's Triangle.
//----------------------------------------------------

//Given a non-negative integer numRows, generate the first numRows of Pascal's triangle.
//
//In Pascal's triangle, each number is the sum of the two numbers directly above it.

//----------------------------------------------------

func generate(_ numRows: Int) -> [[Int]] {
    var rowLength = 0
    var currentRow = 0
    var i = 0
    var triangle = [[Int]]()
    var tempArr = [1]
    
    while i < numRows {
        triangle.append(tempArr)
        tempArr.append(1)
        i += 1
    }
    
    if numRows > 2 {
        currentRow = 2
        while currentRow < numRows {
            i = 1
            rowLength = triangle[currentRow].count
            while i < rowLength - 1 && i > 0 {
                triangle[currentRow][i] = triangle[currentRow - 1][i - 1] + triangle[currentRow - 1][i]
                i += 1
            }
            currentRow += 1
        }
    }
    
    return triangle
}

//Input:
let num = 5
//Output:
//[
//     [1],
//    [1,1],
//   [1,2,1],
//  [1,3,3,1],
// [1,4,6,4,1]
//]

generate(num)


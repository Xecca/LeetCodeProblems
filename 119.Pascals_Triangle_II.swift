// Solved by Xecca

//119. Pascal's Triangle II
//Сomplexity: Easy
//https://leetcode.com/problems/pascals-triangle-ii/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Pascal's Triangle II.
//Memory Usage: 13.8 MB, less than 100.00% of Swift online submissions for Pascal's Triangle II.
//----------------------------------------------------

//Given an integer rowIndex, return the rowIndexth row of the Pascal's triangle.
//
//Notice that the row index starts from 0.
//
//
//In Pascal's triangle, each number is the sum of the two numbers directly above it.
//
//Follow up:
//
//Could you optimize your algorithm to use only O(k) extra space?

//----------------------------------------------------

func getRow(_ rowIndex: Int) -> [Int] {
    var rowLength = 0
    var currentRow = 0
    var i = 0
    var triangle = [[Int]]()
    var tempArr = [1]
    
    while i < rowIndex + 1 {
        triangle.append(tempArr)
        tempArr.append(1)
        i += 1
    }
    
    if rowIndex + 1 > 2 {
        currentRow = 2
        while currentRow < rowIndex + 1 {
            i = 1
            rowLength = triangle[currentRow].count
            while i < rowLength - 1 && i > 0 {
                triangle[currentRow][i] = triangle[currentRow - 1][i - 1] + triangle[currentRow - 1][i]
                i += 1
            }
            currentRow += 1
        }
    }
    
    return triangle[rowIndex]
}

//Input:
let rowIndex = 3
//Output: [1,3,3,1]

getRow(rowIndex)


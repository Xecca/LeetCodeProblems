// Solved by Xecca

//118. Pascal's Triangle
//Difficult: Easy
//https://leetcode.com/problems/pascals-triangle/

//Given an integer numRows, return the first numRows of Pascal's triangle.
//
//In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:
//                [[1],
//                [1,1],
//               [1,2,1],
//              [1,3,3,1],
//             [1,4,6,4,1]]

//

//Given an m x n matrix, return all elements of the matrix in spiral order.
//
//Constraints:
//
//1 <= numRows <= 30

//

func generate(_ numRows: Int) -> [[Int]] {
    var pascalTriangle: [[Int]] = [[1]]
    
    if numRows == 1 {
        return pascalTriangle
    }

    var row = 2
    var prevRow = [1, 1]
    
    pascalTriangle.append(prevRow)
    
    while row < numRows {
        prevRow = addNums(prevRow)
        pascalTriangle.append(prevRow)
        
        row += 1
    }
    
    return pascalTriangle
}

func addNums(_ prevRow: [Int]) -> [Int] {
    var finalArr: [Int] = [1]
    var i = 0
    
    while i < prevRow.count - 1 {
        finalArr.append(prevRow[i] + prevRow[i + 1])
        i += 1
    }
    finalArr.append(1)
    
    return finalArr
}

//

//Example 1:
//
//Input: numRows = 5
//Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
//Example 2:
//
//Input: numRows = 1
//Output: [[1]]

//Test cases:

if generate(5) == [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]] { print("Correct!") } else { print("Error! Expexted: \([[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]])") }


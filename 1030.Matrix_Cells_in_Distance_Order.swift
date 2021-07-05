// Solved by Xecca

//1030. Matrix Cells in Distance Order
//Difficult: Easy
//https://leetcode.com/problems/matrix-cells-in-distance-order/

//Runtime: 256 ms, faster than 44.44% of Swift online submissions for Matrix Cells in Distance Order.
//Memory Usage: 16.1 MB, less than 11.11% of Swift online submissions for Matrix Cells in Distance Order.

//

//We are given a matrix with rows rows and cols columns has cells with integer coordinates (r, c), where 0 <= r < rows and 0 <= c < cols.
//
//Additionally, we are given a cell in that matrix with coordinates (rCenter, cCenter).
//
//Return the coordinates of all cells in the matrix, sorted by their distance from (rCenter, cCenter) from smallest distance to largest distance.  Here, the distance between two cells (r1, c1) and (r2, c2) is the Manhattan distance, |r1 - r2| + |c1 - c2|.  (You may return the answer in any order that satisfies this condition.)
//
//Note:
//
//1 <= rows <= 100
//1 <= cols <= 100
//0 <= rCenter < rows
//0 <= cCenter < cols

//

func allCellsDistOrder(_ rows: Int, _ cols: Int, _ rCenter: Int, _ cCenter: Int) -> [[Int]] {
    let length = rows * cols
    var matrix = Array(repeating: [0, 0, 0], count: length)
    var sortedCoord = Array(repeating: [0, 0], count: length)
    var r = 0
    var c = 0
    var i = 0
    let colsCount = cols - 1
    
    while i < length {
        matrix[i][0] = r
        matrix[i][1] = c
        matrix[i][2] = abs(matrix[i][0] - rCenter) + abs(matrix[i][1] - cCenter)
        if c == colsCount {
            r += 1
            c = 0
        } else {
            c += 1
        }
        i += 1
    }

    matrix = matrix.sorted(by: {$0[2] < $1[2] })
    for (i, coor) in matrix.enumerated() {
        sortedCoord[i][0] = coor[0]
        sortedCoord[i][1] = coor[1]
    }
    
    return sortedCoord
}

//Example 1:
//
//Input: rows = 1, cols = 2, rCenter = 0, cCenter = 0
//Output: [[0,0],[0,1]]
//Explanation: The distances from (0, 0) to other cells are: [0,1]
//Example 2:
//
//Input: rows = 2, cols = 2, rCenter = 0, cCenter = 1
//Output: [[0,1],[0,0],[1,1],[1,0]]
//Explanation: The distances from (0, 1) to other cells are: [0,1,1,2]
//The answer [[0,1],[1,1],[0,0],[1,0]] would also be accepted as correct.
//Example 3:
//
//Input: rows = 2, cols = 3, rCenter = 1, cCenter = 2
//Output: [[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]]
//Explanation: The distances from (1, 2) to other cells are: [0,1,1,2,2,3]
//There are other answers that would also be accepted as correct, such as [[1,2],[1,1],[0,2],[1,0],[0,1],[0,0]].

//Test cases:

if allCellsDistOrder(2, 3, 1, 2) == [[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]] { print("Correct!") } else { print("Error! Expected: \([[1,2],[0,2],[1,1],[0,1],[1,0],[0,0]])") }


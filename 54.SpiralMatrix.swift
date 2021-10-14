// Solved by Xecca

//54. Spiral Matrix
//Difficult: Medium
//https://leetcode.com/problems/spiral-matrix/

//Runtime: 3 ms, faster than 69.87% of Swift online submissions for Spiral Matrix.
//Memory Usage: 13.8 MB, less than 84.10% of Swift online submissions for Spiral Matrix.

//

//Given an m x n matrix, return all elements of the matrix in spiral order.
//
//Constraints:
//
//m == matrix.length
//n == matrix[i].length
//1 <= m, n <= 10
//-100 <= matrix[i][j] <= 100

//

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var leftLim = 0
    var rightLim = matrix[0].count - 1
    var topLim = 0
    var bottomLim = matrix.count - 1
    let countOfNums = matrix.count * matrix[0].count
    var spiralArr: [Int] = []
    
    while spiralArr.count < countOfNums {
        if leftLim <= rightLim && spiralArr.count < countOfNums {
            spiralArr += moveRight(leftLim, rightLim, topLim, matrix)
            // spiralArr += move(leftLim, rightLim, topLim, matrix, 1, false)
        }
        // print(spiralArr)
        topLim += 1
        if bottomLim >= topLim && spiralArr.count < countOfNums {
            spiralArr += moveDown(topLim, bottomLim, rightLim, matrix)
            // spiralArr += move(rightLim, topLim, rightLim, matrix, 1, true)
        }
        // print(spiralArr)
        rightLim -= 1
        if rightLim >= leftLim && spiralArr.count < countOfNums {
            spiralArr += moveLeft(leftLim, rightLim, bottomLim, matrix)
            // spiralArr += move(rightLim, leftLim, bottomLim, matrix, -1, false)
        }
        // print("topLim = \(topLim), bottomLim = \(bottomLim), leftLim = \(leftLim), rightLim = \(rightLim)")
        // print(spiralArr)
        bottomLim -= 1
        if topLim <= bottomLim && spiralArr.count < countOfNums {
            spiralArr += moveUp(leftLim, topLim, bottomLim, matrix)
        }
        // print("topLim = \(topLim), bottomLim = \(bottomLim), leftLim = \(leftLim), rightLim = \(rightLim)")
        // print(spiralArr)
        leftLim += 1
        // print("topLim = \(topLim), bottomLim = \(bottomLim), leftLim = \(leftLim), rightLim = \(rightLim)")
    }
         
    return spiralArr
}

//     func move(_ minLim: Int, _ maxLim: Int, _ row: Int, _ matrix: [[Int]], _ dir: Int, _ isVertical: Bool) -> [Int] {
//         var c = minLim
//         var r = row
//         var maxVal = 0
//         var partOfSpiral: [Int] = []

//         if minLim < maxLim {
//             while c <= maxLim {
//                 partOfSpiral.append(matrix[r][c])
//                 if !isVertical {
//                     c += dir
//                 } else {
//                     r += 1
//                 }
//             }
//         } else {
//             maxVal = maxLim
//             while c >= maxVal {
//                 partOfSpiral.append(matrix[r][c])
//                 if !isVertical {
//                     c += dir
//                 } else {
//                     r += 1
//                 }
//             }
//         }
    
//         return partOfSpiral
//     }

func moveRight(_ leftLim: Int, _ rightLim: Int, _ row: Int, _ matrix: [[Int]]) -> [Int] {
    var c = leftLim
    var partOfSpiral: [Int] = []
    
    while c <= rightLim {
        partOfSpiral.append(matrix[row][c])
        c += 1
    }
    
    return partOfSpiral
}

func moveDown(_ topLim: Int, _ bottomLim: Int, _ column: Int, _ matrix: [[Int]]) -> [Int] {
    var r = topLim
    var partOfSpiral: [Int] = []
    
    while r <= bottomLim {
        partOfSpiral.append(matrix[r][column])
        r += 1
    }
    
    return partOfSpiral
}

func moveLeft(_ leftLim: Int, _ rightLim: Int, _ row: Int, _ matrix: [[Int]]) -> [Int] {
    var c = rightLim
    var partOfSpiral: [Int] = []
    
    while c >= leftLim {
        partOfSpiral.append(matrix[row][c])
        c -= 1
    }
    
    return partOfSpiral
}

func moveUp(_ leftLim: Int, _ topLim: Int, _ bottomLim: Int, _ matrix: [[Int]]) -> [Int] {
    var r = bottomLim
    var partOfSpiral: [Int] = []
    
    while r >= topLim {
        partOfSpiral.append(matrix[r][leftLim])
        r -= 1
    }
    
    return partOfSpiral
}

//

//Example 1:
//
//Input: matrix = [[1,2,3],[4,5,6],[7,8,9]]
//Output: [1,2,3,6,9,8,7,4,5]
//Example 2:
//
//Input: matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
//Output: [1,2,3,4,8,12,11,10,9,5,6,7]

//Test cases:

if spiralOrder([[1,2,3],[4,5,6],[7,8,9]]) == [1,2,3,6,9,8,7,4,5] { print("Correct!") } else { print("Error! Expexted: \([1,2,3,6,9,8,7,4,5])") }


// Solved by Xecca

//1886. Determine Whether Matrix Can Be Obtained By Rotation
//Difficult: Easy
//https://leetcode.com/problems/determine-whether-matrix-can-be-obtained-by-rotation/

//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Determine Whether Matrix Can Be Obtained By Rotation.
//Memory Usage: 14 MB, less than 28.57% of Swift online submissions for Determine Whether Matrix Can Be Obtained By Rotation.

//

//Given two n x n binary matrices mat and target, return true if it is possible to make mat equal to target by rotating mat in 90-degree increments, or false otherwise.

//Constraints:
//
//n == mat.length == target.length
//n == mat[i].length == target[i].length
//1 <= n <= 10
//mat[i][j] and target[i][j] are either 0 or 1.

//

func findRotation(_ mat: [[Int]], _ target: [[Int]]) -> Bool {
    if mat == target {
        return true
    }

    var row = 0
    var column = 0
    var rotatedMat = mat
    var rotations = 0

    while rotations < 3 {
        let tempMat = rotatedMat
        row = 0
        while row < mat.count {
            while column < mat.count {
                rotatedMat[column][mat.count - 1 - row] = tempMat[row][column]
                column += 1
            }
            row += 1
            column = 0
        }
        rotations += 1
        if rotatedMat == target {
            return true
        }
    }
    
    return false
}

//

//Example 1:
//
//Input: mat = [[0,1],[1,0]], target = [[1,0],[0,1]]
//Output: true
//Explanation: We can rotate mat 90 degrees clockwise to make mat equal target.
//Example 2:
//
//Input: mat = [[0,1],[1,1]], target = [[1,0],[0,1]]
//Output: false
//Explanation: It is impossible to make mat equal to target by rotating mat.
//Example 3:
//
//Input: mat = [[0,0,0],[0,1,0],[1,1,1]], target = [[1,1,1],[0,1,0],[0,0,0]]
//Output: true
//Explanation: We can rotate mat 90 degrees clockwise two times to make mat equal target.

//Test cases:

if findRotation([[0,0,0],[0,1,0],[1,1,1]], [[1,1,1],[0,1,0],[0,0,0]]) == true { print("Correct!") } else { print("Error! Expexted: \(true)") }


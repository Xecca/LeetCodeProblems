//832. Flipping an Image
//https://leetcode.com/problems/flipping-an-image/
//Runtime: 28 ms, faster than 97.50% of Swift online submissions for Flipping an Image.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Flipping an Image.
//----------------------------------------------------
//Given a binary matrix A, we want to flip the image horizontally, then invert it, and return the resulting image.
//
//To flip an image horizontally means that each row of the image is reversed.  For example, flipping [1, 1, 0] horizontally results in [0, 1, 1].
//
//To invert an image means that each 0 is replaced by 1, and each 1 is replaced by 0. For example, inverting [0, 1, 1] results in [1, 0, 0].
//----------------------------------------------------

func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
    var newArr = A
    var i = 0
    var j = 0
    var jEnd = 0
    let sizeMatrix = A.count
    let sizeCell = A[0].count

    while i < sizeMatrix {
        j = 0
        jEnd = sizeCell - 1
        while j < sizeCell {
            if A[i][j] == 1 {
                newArr[i][jEnd] = 0
            } else {
                newArr[i][jEnd] = 1
            }
            j += 1
            jEnd -= 1
        }
        i += 1
    }

    return newArr
}

//Input:
let arr = [[1,1,0,0],[1,0,0,1],[0,1,1,1],[1,0,1,0]]
//Output: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]
//Explanation: First reverse each row: [[0,0,1,1],[1,0,0,1],[1,1,1,0],[0,1,0,1]].
//Then invert the image: [[1,1,0,0],[0,1,1,0],[0,0,0,1],[1,0,1,0]]

flipAndInvertImage(arr)


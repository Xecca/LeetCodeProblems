//1252. Cells with Odd Values in a Matrix
//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
//Runtime: 16 ms, faster than 95.92% of Swift online submissions for Cells with Odd Values in a Matrix.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Cells with Odd Values in a Matrix.
//----------------------------------------------------
//Given n and m which are the dimensions of a matrix initialized by zeros and given an array indices where indices[i] = [ri, ci]. For each pair of [ri, ci] you have to increment all cells in row ri and column ci by 1.
//
//Return the number of cells with odd values in the matrix after applying the increment to all indices.
//----------------------------------------------------

func oddCells(_ n: Int, _ m: Int, _ indices: [[Int]]) -> Int {
    var newArr = [[Int]](repeating: [Int](repeating: 0, count: m), count: n)
    var i = 0
    var j = 0
    
    while i < indices.count {
        j = 0
        while j < m {
            newArr[indices[i][0]][j] += 1 // increment by row
            j += 1
        }
        j = 0
        while j < n {
            newArr[j][indices[i][1]] += 1 // increment by column
            j += 1
        }
        i += 1
    }
    
    return calculateCountOfOdd(newArr, n, m)
}

func calculateCountOfOdd(_ finalArray: [[Int]], _ n: Int, _ m: Int) -> Int {
    var i = 0
    var j = 0
    var countOdd = 0
    
    while i < n {
        j = 0
        while j < m {
            if finalArray[i][j] % 2 != 0 {
                countOdd += 1
            }
            j += 1
        }
        i += 1
    }
    return countOdd
}

//Input:
let n = 2, m = 3, indices = [[0,1],[1,1]]
//Output: 6
//Explanation: Initial matrix = [[0,0,0],[0,0,0]].
//After applying first increment it becomes [[1,2,1],[0,1,0]].
//The final matrix will be [[1,3,1],[1,3,1]] which contains 6 odd numbers.

oddCells(n, m, indices)


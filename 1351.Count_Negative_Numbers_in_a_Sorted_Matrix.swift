//1351. Count Negative Numbers in a Sorted Matrix
//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
//Runtime: 144 ms, faster than 96.06% of Swift online submissions for Count Negative Numbers in a Sorted Matrix.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Count Negative Numbers in a Sorted Matrix.
//----------------------------------------------------
//Given a m * n matrix grid which is sorted in non-increasing order both row-wise and column-wise.
//
//Return the number of negative numbers in grid.
//----------------------------------------------------

func countNegatives(_ grid: [[Int]]) -> Int {
    var i = 0
    var j = 0
    var count = 0
    let height = grid.count
    let width = grid[0].count
    
    while i < height {
        j = width - 1
        while j >= 0 {
            if grid[i][j] < 0 {
                count += 1
                j -= 1
            } else {
                break
            }
        }
        i += 1
    }
    
    return count
}

//Input:
let grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
//Output: 8

countNegatives(grid)


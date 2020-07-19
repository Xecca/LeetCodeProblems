//1260. Shift 2D Grid
//Сomplexity: Easy
//https://leetcode.com/problems/shift-2d-grid/

//----------------------------------------------------
//Runtime: 216 ms, faster than 71.43% of Swift online submissions for Shift 2D Grid.
//Memory Usage: 21.4 MB, less than 100.00% of Swift online submissions for Shift 2D Grid.
//----------------------------------------------------

//Given a 2D grid of size m x n and an integer k. You need to shift the grid k times.
//
//In one shift operation:
//
//Element at grid[i][j] moves to grid[i][j + 1].
//Element at grid[i][n - 1] moves to grid[i + 1][0].
//Element at grid[m - 1][n - 1] moves to grid[0][0].
//Return the 2D grid after applying shift operation k times.

//----------------------------------------------------

func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
    let lengthGrid = grid.count * grid[0].count
    if lengthGrid == 0 || lengthGrid == 1 {
        return grid
    }
    var countMove = k
    
    while countMove > lengthGrid {
        countMove -= lengthGrid
    }
    
    var i = 0
    var j = 0
    var newGrid = grid
    var tempGridArr = [Int]()
    var newGridArr = [Int]()

    for row in grid {
        for num in row {
            tempGridArr.append(num)
        }
    }
    
    let startIndex = lengthGrid - countMove
    
    i = startIndex
    while i < lengthGrid {
        newGridArr.append(tempGridArr[i])
        i += 1
    }
    i = 0
    while i < startIndex {
        newGridArr.append(tempGridArr[i])
        i += 1
    }
    i = 0
    var newIndex = 0
    
    while i < newGrid.count {
        j = 0
        while j < newGrid[i].count {
            newGrid[i][j] = newGridArr[newIndex]
            j += 1
            newIndex += 1
        }
        i += 1
    }

    return newGrid
}

//Input:
let grid = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
], k = 1
//Output: [
//    [9,1,2],
//    [3,4,5],
//    [6,7,8]]

shiftGrid(grid, k)


//463. Island Perimeter
//Сomplexity: Easy
//https://leetcode.com/problems/island-perimeter/
//----------------------------------------------------
//Runtime: 36 ms, faster than 92.54% of Swift online submissions for Find Lucky Integer in an Array.
//Memory Usage: 21.6 MB, less than 38.30% of Swift online submissions for Find Lucky Integer in an Array.
//----------------------------------------------------

//You are given a map in form of a two-dimensional integer grid where 1 represents land and 0 represents water.
//
//Grid cells are connected horizontally/vertically (not diagonally). The grid is completely surrounded by water, and there is exactly one island (i.e., one or more connected land cells).
//
//The island doesn't have "lakes" (water inside that isn't connected to the water around the island). One cell is a square with side length 1. The grid is rectangular, width and height don't exceed 100. Determine the perimeter of the island.

//----------------------------------------------------

func islandPerimeter(_ grid: [[Int]]) -> Int {
    var c = 0
    var r = 0
    let width = grid[0].count
    let height = grid.count
    var perimeter = 0
    
    while r < height {
        c = 0
        while c < width {
            if grid[r][c] == 1 {
                // checking neighbor from top
                if r == 0 || grid[r - 1][c] == 0 {
                    perimeter += 1
                // checking neighbor from left
                }
                if c == 0 || grid[r][c - 1] == 0 {
                    perimeter += 1
                }
                // checking neighbor from right
                if c == width - 1 || grid[r][c + 1] == 0 {
                    perimeter += 1
                }
                // checking neighbor from bottom
                if r == height - 1 || grid[r + 1][c] == 0 {
                    perimeter += 1
                }
            }
            c += 1
        }
        r += 1
    }
    
    return perimeter
}

//Input:
let grid =
[[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
//
//Output: 16

islandPerimeter(grid)


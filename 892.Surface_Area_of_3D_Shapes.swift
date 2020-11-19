//
//  LeetCodeProblems
//
//  Created by Xecca

//892. Surface Area of 3D Shapes
//Difficult: Easy
//https://leetcode.com/problems/surface-area-of-3d-shapes/

//Runtime: 52 ms, faster than 50.00% of Swift online submissions for Surface Area of 3D Shapes.
//Memory Usage: 13.8 MB, less than 75.00% of Swift online submissions for Surface Area of 3D Shapes.

//
//On a N * N grid, we place some 1 * 1 * 1 cubes.
//
//Each value v = grid[i][j] represents a tower of v cubes placed on top of grid cell (i, j).
//
//Return the total surface area of the resulting shapes.
//

func surfaceArea(_ grid: [[Int]]) -> Int {
    var r = 0
    var c = 0
    var shapes = 0
    
    while r < grid.count {
        while c < grid[r].count {
            if grid[r][c] != 0 {
                shapes += (grid[r][c] * 6) - ((grid[r][c] * 2) - 2)
            }
            if r > 0 {
                if grid[r - 1][c] > grid[r][c] {
                    shapes -= grid[r][c]
                } else {
                    shapes -= grid[r - 1][c]
                }
            }
            if r < grid.count - 1 {
                if grid[r + 1][c] > grid[r][c] {
                    shapes -= grid[r][c]
                } else {
                    shapes -= grid[r + 1][c]
                }
            }
            if c > 0 {
                if grid[r][c - 1] > grid[r][c] {
                    shapes -= grid[r][c]
                } else {
                    shapes -= grid[r][c - 1]
                }
            }
            if c < grid[r].count - 1 {
                if grid[r][c + 1] > grid[r][c] {
                    shapes -= grid[r][c]
                } else {
                    shapes -= grid[r][c + 1]
                }
            }
            c += 1
        }
        
        c = 0
        r += 1
    }
    
    return shapes
}

//Test cases:

if surfaceArea([[2]]) == 10 { print("Correct!") } else { print("Error!") }
if surfaceArea([[1,2],[3,4]]) == 34 { print("Correct!") } else { print("Error!") }
if surfaceArea([[2,2,2],[2,1,2],[2,2,2]]) == 46 { print("Correct!") } else { print("Error!") }
if surfaceArea([[1,1,1],[1,0,1],[1,1,1]]) == 32 { print("Correct!") } else { print("Error!") }


//1051. Height Checker
//https://leetcode.com/problems/height-checker/
//----------------------------------------------------
//Runtime: 16 ms, faster than 84.02% of Swift online submissions for Height Checker.
//Memory Usage: 21 MB, less than 82.67% of Swift online submissions for Height Checker.
//----------------------------------------------------
//Students are asked to stand in non-decreasing order of heights for an annual photo.
//
//Return the minimum number of students that must move in order for all students to be standing in non-decreasing order of height.
//
//Notice that when a group of students is selected they can reorder in any possible way between themselves and the non selected students remain on their seats.
//----------------------------------------------------

func heightChecker(_ heights: [Int]) -> Int {
    let sortedArr = heights.sorted()
    var i = 0
    var countDiff = 0
    let length = heights.count
    
    while i < length {
        if heights[i] != sortedArr[i] {
            countDiff += 1
        }
        i += 1
    }
    
    return countDiff
}

//Input:
let heights = [1,1,4,2,1,3]
//Output: 3
//Explanation:
//Current array : [1,1,4,2,1,3]
//Target array  : [1,1,1,2,3,4]
//On index 2 (0-based) we have 4 vs 1 so we have to move this student.
//On index 4 (0-based) we have 1 vs 3 so we have to move this student.
//On index 5 (0-based) we have 3 vs 4 so we have to move this student.

heightChecker(heights)


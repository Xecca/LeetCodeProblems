//1266. Minimum Time Visiting All Points
//https://leetcode.com/problems/minimum-time-visiting-all-points/
//Runtime: 36 ms, faster than 98.98% of Swift online submissions for Minimum Time Visiting All Points.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Minimum Time Visiting All Points.
//----------------------------------------------------
//On a plane there are n points with integer coordinates points[i] = [xi, yi]. Your task is to find the minimum time in seconds to visit all points.
//
//You can move according to the next rules:
//
//In one second always you can either move vertically, horizontally by one unit or diagonally (it means to move one unit vertically and one unit horizontally in one second).
//You have to visit the points in the same order as they appear in the array.
//----------------------------------------------------


func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
    var countSecFinal = 0
    var i = 0
    let length = points.count
    
    while i < length - 1 {
        let countSecX = abs(points[i][0] - points[i + 1][0])
        let countSecY = abs(points[i][1] - points[i + 1][1])
        countSecFinal += max(countSecX, countSecY)
        i += 1
    }
    
    return countSecFinal
}

//Input:
let points = [[1,1],[3,4],[-1,0]]
//Output: 7
//Explanation: One optimal path is [1,1] -> [2,2] -> [3,3] -> [3,4] -> [2,3] -> [1,2] -> [0,1] -> [-1,0]
//Time from [1,1] to [3,4] = 3 seconds
//Time from [3,4] to [-1,0] = 4 seconds
//Total time = 7 seconds

minTimeToVisitAllPoints(points)


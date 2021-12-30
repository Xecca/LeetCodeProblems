// Solved by Xecca

import Foundation

//973. K Closest Points to Origin
//Difficult: Medium
//https://leetcode.com/problems/k-closest-points-to-origin/

//Runtime: 1336 ms, faster than 8.80% of Swift online submissions for K Closest Points to Origin.
//Memory Usage: 16.5 MB, less than 8.81% of Swift online submissions for K Closest Points to Origin.

//

//Given an array of points where points[i] = [xi, yi] represents a point on the X-Y plane and an integer k, return the k closest points to the origin (0, 0).
//
//The distance between two points on the X-Y plane is the Euclidean distance (i.e., √(x1 - x2)2 + (y1 - y2)2).
//
//You may return the answer in any order. The answer is guaranteed to be unique (except for the order that it is in).
//
//Constraints:
//
//1 <= k <= points.length <= 10^4
//-10^4 < xi, yi < 10^4

//

func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
    var dict: [(Int, Double)] = [] // [index, hypotenuse]
    
    for (i, coordinate) in points.enumerated() {
        dict.append((i, hypotenuse(Double(abs(coordinate[0])), Double(abs(coordinate[1])))))
    }
    
    let sortedDict = dict.sorted { $0.1 < $1.1 }
    
    var i = 0
    var arrWithDotsCoor: [[Int]] = []
    
    while i < k {
        arrWithDotsCoor.append(points[sortedDict[i].0])
        i += 1
    }
    
    return arrWithDotsCoor
}

func hypotenuse(_ a: Double, _ b: Double) -> Double {
    return (a * a + b * b).squareRoot()
}

//Example 1:
//
//Input: points = [[1,3],[-2,2]], k = 1
//Output: [[-2,2]]
//Explanation:
//The distance between (1, 3) and the origin is sqrt(10).
//The distance between (-2, 2) and the origin is sqrt(8).
//Since sqrt(8) < sqrt(10), (-2, 2) is closer to the origin.
//We only want the closest k = 1 points from the origin, so the answer is just [[-2,2]].
//Example 2:
//
//Input: points = [[3,3],[5,-1],[-2,4]], k = 2
//Output: [[3,3],[-2,4]]
//Explanation: The answer [[-2,4],[3,3]] would also be accepted.

//Test cases:

let input = [[3,3],[5,-1],[-2,4]]
let k = 2
let answer = [[3,3],[-2,4]]

if kClosest(input, k) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


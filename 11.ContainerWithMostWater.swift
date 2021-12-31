// Solved by Xecca

import Foundation

//11. Container With Most Water
//Difficult: Medium
//https://leetcode.com/problems/container-with-most-water/

//Runtime: 652 ms, faster than 72.26% of Swift online submissions for Container With Most Water.
//Memory Usage: 18.2 MB, less than 58.74% of Swift online submissions for Container With Most Water.

//

//You are given an integer array height of length n. There are n vertical lines drawn such that the two endpoints of the ith line are (i, 0) and (i, height[i]).
//
//Find two lines that together with the x-axis form a container, such that the container contains the most water.
//
//Return the maximum amount of water a container can store.
//
//Notice that you may not slant the container.
//
//Constraints:
//
//n == height.length
//2 <= n <= 10^5
//0 <= height[i] <= 10^4

//

func maxArea(_ height: [Int]) -> Int {
    var maxSquare = 0
    var i = 0
    var j = height.count - 1
    
    while i < j {
        let area = min(height[i], height[j]) * (j - i)
        maxSquare = max(area, maxSquare)
        if height[i] < height[j] {
            i += 1
        } else {
            j -= 1
        }
    }
    
    return maxSquare
}

//Example 1:
//
//Input: height = [1,8,6,2,5,4,8,3,7]
//Output: 49
//Explanation: The above vertical lines are represented by array [1,8,6,2,5,4,8,3,7]. In this case, the max area of water (blue section) the container can contain is 49.
//Example 2:
//
//Input: height = [1,1]
//Output: 1

//Test cases:

let input = [1,8,6,2,5,4,8,3,7]
let answer = 49

if maxArea(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


// Solved by Xecca

//1732. Find the Highest Altitude
//Difficult: Easy
//https://leetcode.com/problems/find-the-highest-altitude/

//Runtime: 4 ms, faster than 99.02% of Swift online submissions for Find the Highest Altitude.
//Memory Usage: 14 MB, less than 48.04% of Swift online submissions for Find the Highest Altitude.

//

//There is a biker going on a road trip. The road trip consists of n + 1 points at different altitudes. The biker starts his trip on point 0 with altitude equal 0.
//
//You are given an integer array gain of length n where gain[i] is the net gain in altitude between points i​​​​​​ and i + 1 for all (0 <= i < n). Return the highest altitude of a point.
//
//Constraints:
//
//1 <= s.length <= 500
//k is in the range [1, the number of words in s].
//s consist of only lowercase and uppercase English letters and spaces.
//The words in s are separated by a single space.
//There are no leading or trailing spaces.

//

func largestAltitude(_ gain: [Int]) -> Int {
    var i = 0
    var prevLevel = 0
    var maxAlt = 0
    
    while i < gain.count {
        let currDiff = prevLevel + gain[i]
        if currDiff > maxAlt {
            maxAlt = currDiff
        }
        prevLevel = currDiff
        i += 1
    }
    
    return maxAlt
}

//Example 1:
//
//Input: gain = [-5,1,5,0,-7]
//Output: 1
//Explanation: The altitudes are [0,-5,-4,1,1,-6]. The highest is 1.
//Example 2:
//
//Input: gain = [-4,-3,-2,-1,4,3,2]
//Output: 0
//Explanation: The altitudes are [0,-4,-7,-9,-10,-6,-3,-1]. The highest is 0.

//Test cases:

if largestAltitude([-5,1,5,0,-7]) == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }


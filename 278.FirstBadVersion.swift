// Solved by Xecca

import Foundation

//278. First Bad Version
//Difficult: Easy
//https://leetcode.com/problems/first-bad-version/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for First Bad Version.
//Memory Usage: 13.5 MB, less than 84.02% of Swift online submissions for First Bad Version.

//

//You are a product manager and currently leading a team to develop a new product. Unfortunately, the latest version of your product fails the quality check. Since each version is developed based on the previous version, all the versions after a bad version are also bad.
//
//Suppose you have n versions [1, 2, ..., n] and you want to find out the first bad one, which causes all the following ones to be bad.
//
//You are given an API bool isBadVersion(version) which returns whether version is bad. Implement a function to find the first bad version. You should minimize the number of calls to the API.
//

//Constraints:
//
//1 <= bad <= n <= 2^31 - 1

//

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        
        var i = 1
        var j = n
        
        while i < j {
            let middle = (i + j) / 2
            
            if j - i == 1 {
                return isBadVersion(i) == false ? j : i
            }
            
            if isBadVersion(middle) == true {
                j = middle
            } else {
                i = middle
            }
        }
        
        return 0
    }
}

//Example 1:
//
//Input: n = 5, bad = 4
//Output: 4
//Explanation:
//call isBadVersion(3) -> false
//call isBadVersion(5) -> true
//call isBadVersion(4) -> true
//Then 4 is the first bad version.
//Example 2:
//
//Input: n = 1, bad = 1
//Output: 1

//Test cases:

//let input = "aaa"
//let answer = 6

//if countSubstrings(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


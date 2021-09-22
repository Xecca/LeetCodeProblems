// Solved by Xecca

//1995. Count Special Quadruplets
//Difficult: Easy
//https://leetcode.com/problems/count-special-quadruplets/

//Runtime: 160 ms, faster than 84.00% of Swift online submissions for Count Special Quadruplets.
//Memory Usage: 13.5 MB, less than 100.00% of Swift online submissions for Count Special Quadruplets.

//

//Given a 0-indexed integer array nums, return the number of distinct quadruplets (a, b, c, d) such that:
//
//nums[a] + nums[b] + nums[c] == nums[d], and
//a < b < c < d

//Constraints:
//
//4 <= nums.length <= 50
//1 <= nums[i] <= 100

//

func countQuadruplets(_ nums: [Int]) -> Int {
    var a = 0
    var b = a + 1
    var c = b + 1
    var d = c + 1
    var quadruplets = 0
    
    while a < nums.count - 3 {
        b = a + 1
        while b < nums.count - 2 {
            c = b + 1
            while c < nums.count - 1 {
                d = c + 1
                while d < nums.count {
                    if nums[a] + nums[b] + nums[c] == nums[d] && a < b && b < c && c < d {
                        quadruplets += 1
                    }
                    d += 1
                }
                c += 1
            }
            b += 1
        }
        a += 1
    }
    
    return quadruplets
}

//

//Example 1:
//
//Input: nums = [1,2,3,6]
//Output: 1
//Explanation: The only quadruplet that satisfies the requirement is (0, 1, 2, 3) because 1 + 2 + 3 == 6.
//Example 2:
//
//Input: nums = [3,3,6,4,5]
//Output: 0
//Explanation: There are no such quadruplets in [3,3,6,4,5].
//Example 3:
//
//Input: nums = [1,1,1,3,5]
//Output: 4
//Explanation: The 4 quadruplets that satisfy the requirement are:
//- (0, 1, 2, 3): 1 + 1 + 1 == 3
//- (0, 1, 3, 4): 1 + 1 + 3 == 5
//- (0, 2, 3, 4): 1 + 1 + 3 == 5
//- (1, 2, 3, 4): 1 + 1 + 3 == 5

//Test cases:

if reversePrefix("xyxzxe", "z") == "zxyxxe" { print("Correct!") } else { print("Error! Expexted: \("zxyxxe")") }


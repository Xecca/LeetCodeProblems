// Solved by Xecca

//1422. Maximum Score After Splitting a String
//Difficult: Easy
//https://leetcode.com/problems/maximum-score-after-splitting-a-string/

//Runtime: 20 ms, faster than 10.53% of Swift online submissions for Path Crossing.
//Memory Usage: 14.9 MB, less than 15.79% of Swift online submissions for Path Crossing.

//

//Given a string s of zeros and ones, return the maximum score after splitting the string into two non-empty substrings (i.e. left substring and right substring).
//
//The score after splitting a string is the number of zeros in the left substring plus the number of ones in the right substring.

//Constraints:
//
//2 <= s.length <= 500
//The string s consists of characters '0' and '1' only.

//

func maxScore(_ s: String) -> Int {

    var i = 0
    var maxScore = 0
    var nums: [Int] = []
    var leftSum = 0
    var rightSum = 0
    var sum = 0

    for char in s {
        if char == "1" {
            nums.append(1)
            sum += 1
        } else {
            nums.append(0)
        }
    }
    rightSum = sum
    while i < s.count - 1 {
        leftSum += 1 - nums[i]
        rightSum = rightSum - nums[i]
        sum = leftSum + rightSum
        if sum > maxScore {
            maxScore = sum
        }
        i += 1
    }

    return maxScore
}

//Example 1:
//
//Input: s = "011101"
//Output: 5
//Explanation:
//All possible ways of splitting s into two non-empty substrings are:
//left = "0" and right = "11101", score = 1 + 4 = 5
//left = "01" and right = "1101", score = 1 + 3 = 4
//left = "011" and right = "101", score = 1 + 2 = 3
//left = "0111" and right = "01", score = 1 + 1 = 2
//left = "01110" and right = "1", score = 2 + 1 = 3
//Example 2:
//
//Input: s = "00111"
//Output: 5
//Explanation: When left = "00" and right = "111", we get the maximum score = 2 + 3 = 5
//Example 3:
//
//Input: s = "1111"
//Output: 3

//Test cases:

if maxScore("011101") == 5 { print("Correct!") } else { print("Error! Expected: \(5)") }
if maxScore("00111") == 5 { print("Correct!") } else { print("Error! Expected: \(5)") }
if maxScore("00") == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }
if maxScore("1111") == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }


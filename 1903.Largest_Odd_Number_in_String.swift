// Solved by Xecca

//1903. Largest Odd Number in String
//Difficult: Easy
//https://leetcode.com/problems/largest-odd-number-in-string/

//Runtime: 328 ms, faster than 74.60% of Swift online submissions for Largest Odd Number in String.
//Memory Usage: 16 MB, less than 73.02% of Swift online submissions for Largest Odd Number in String.

//

//You are given a string num, representing a large integer. Return the largest-valued odd integer (as a string) that is a non-empty substring of num, or an empty string "" if no odd integer exists.
//
//A substring is a contiguous sequence of characters within a string.

//Constraints:
//
//1 <= num.length <= 10^5
//num only consists of digits and does not contain any leading zeros.

//

func largestOddNumber(_ num: String) -> String {
    var i = num.count - 1
     
    while i >= 0 {
        let currNum = (num[String.Index(utf16Offset: i, in: num)].asciiValue ?? 0) - 48

        if currNum % 2 != 0 {
            return String(num.prefix(i + 1))
        }
        i -= 1
    }
    
    return ""
}

//Example 1:
//
//Input: num = "52"
//Output: "5"
//Explanation: The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.
//Example 2:
//
//Input: num = "4206"
//Output: ""
//Explanation: There are no odd numbers in "4206".
//Example 3:
//
//Input: num = "35427"
//Output: "35427"
//Explanation: "35427" is already an odd number.

//Test cases:

if largestOddNumber("4206") == "" { print("Correct!") } else { print("Error! Expected: \("")") }


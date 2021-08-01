// Solved by Xecca

//696. Count Binary Substrings
//Difficult: Easy
//https://leetcode.com/problems/count-binary-substrings/

//Runtime: 408 ms, faster than 9.09% of Swift online submissions for Count Binary Substrings.
//Memory Usage: 15.2 MB, less than 45.45% of Swift online submissions for Count Binary Substrings.

//

//Give a binary string s, return the number of non-empty substrings that have the same number of 0's and 1's, and all the 0's and all the 1's in these substrings are grouped consecutively.
//
//Substrings that occur multiple times are counted the number of times they occur.
//
//Constraints:
//
//1 <= s.length <= 10^5
//s[i] is either '0' or '1'.

//

func countBinarySubstrings(_ s: String) -> Int {
    var arr = Array(repeating: 0, count: s.count)
    let length = s.count - 1
    var lastPos = 1
    var countOfSubs = 0

    for (i, num) in s.enumerated() {
        arr[i] = Int(String(num))!
    }
    
    var i = 0
    var j = 1
    
    while i < length {
        j = lastPos
        while i >= 0 && j <= length {
            if arr[j] != arr[i] && arr[j] == arr[lastPos] {
                countOfSubs += 1
                i -= 1
                j += 1
            } else {
                break
            }
        }
        lastPos += 1
        i = lastPos - 1
    }
    
    return countOfSubs
}

//Example 1:
//
//Input: s = "00110011"
//Output: 6
//Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
//Notice that some of these substrings repeat and are counted the number of times they occur.
//Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.
//Example 2:
//
//Input: s = "10101"
//Output: 4
//Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.

//Test cases:

if countBinarySubstrings("00110011") == 6 { print("Correct!") } else { print("Error! Expected: \(6)") }


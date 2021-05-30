// Solved by Xecca

//1869. Longer Contiguous Segments of Ones than Zeros
//Difficult: Easy
//https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Longer Contiguous Segments of Ones than Zeros.
//Memory Usage: 14.1 MB, less than 55.56% of Swift online submissions for Longer Contiguous Segments of Ones than Zeros.

//

//Given a binary string s, return true if the longest contiguous segment of 1s is strictly longer than the longest contiguous segment of 0s in s. Return false otherwise.
//
//For example, in s = "110100010" the longest contiguous segment of 1s has length 2, and the longest contiguous segment of 0s has length 3.
//Note that if there are no 0s, then the longest contiguous segment of 0s is considered to have length 0. The same applies if there are no 1s.

//Constraints:
//
//1 <= s.length <= 100
//s[i] is either '0' or '1'.

//

func checkZeroOnes(_ s: String) -> Bool {
    var onesMax = 0
    var zeroesMax = 0
    var tempCountOnes: Int = 0
    var tempCountZeroes: Int = 0
    var i = 0
    
    while i < s.count {
        switch String(s[String.Index(utf16Offset: i, in: s)]) {
            case "1":
                tempCountOnes += 1
                tempCountZeroes = 0
                onesMax = max(tempCountOnes, onesMax)
            default:
                tempCountZeroes += 1
                tempCountOnes = 0
                zeroesMax = max(tempCountZeroes, zeroesMax)
        }
        i += 1
    }
    
    if onesMax > zeroesMax {
        return true
    }
    return false
}

//Example 1:
//
//Input: s = "1101"
//Output: true
//Explanation:
//The longest contiguous segment of 1s has length 2: "1101"
//The longest contiguous segment of 0s has length 1: "1101"
//The segment of 1s is longer, so return true.
//Example 2:
//
//Input: s = "111000"
//Output: false
//Explanation:
//The longest contiguous segment of 1s has length 3: "111000"
//The longest contiguous segment of 0s has length 3: "111000"
//The segment of 1s is not longer, so return false.
//Example 3:
//
//Input: s = "110100010"
//Output: false
//Explanation:
//The longest contiguous segment of 1s has length 2: "110100010"
//The longest contiguous segment of 0s has length 3: "110100010"
//The segment of 1s is not longer, so return false.

//Test cases:

if checkZeroOnes("110100010") == false { print("Correct!") } else { print("Error! Expected: \(false)") }



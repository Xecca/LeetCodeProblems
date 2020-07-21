//1446. Consecutive Characters
//Сomplexity: Easy
//https://leetcode.com/problems/consecutive-characters/

//----------------------------------------------------
//Runtime: 16 ms, faster than 75.00% of Swift online submissions for Consecutive Characters.
//Memory Usage: 19.9 MB, less than 100.00% of Swift online submissions for Consecutive Characters.
//----------------------------------------------------

//Given a string s, the power of the string is the maximum length of a non-empty substring that contains only one unique character.
//
//Return the power of the string.

//----------------------------------------------------

func maxPower(_ s: String) -> Int {
//    var maxVal = [0, 0] // [maxVal, indexInString]
    var maxVal = 1
//    var i = 0
    var currentVal = 1
    let chars = Array(s)
    
    for i in 0..<chars.count - 1 {
        if chars[i] == chars[i + 1] {
            currentVal += 1
            if currentVal > maxVal {
                maxVal = currentVal
            }
        } else {
            currentVal = 1
        }
    }
    
    return maxVal
}

//Input:
let s = "abbcccddddeeeeedcba"
//Output: 5
//Explanation: The substring "eeeee" is of length 5 with the character 'e' only.

maxPower(s)


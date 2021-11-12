// Solved by Xecca

import Foundation

//58. Length of Last Word
//Difficult: Easy
//https://leetcode.com/problems/length-of-last-word/

//Runtime: 4 ms, faster than 78.66% of Swift online submissions for Length of Last Word.
//Memory Usage: 14.3 MB, less than 39.53% of Swift online submissions for Length of Last Word.
    
//

//Given a string s consisting of some words separated by some number of spaces, return the length of the last word in the string.
//
//A word is a maximal substring consisting of non-space characters only.
//
//Constraints:
//
//1 <= s.length <= 10^4
//s consists of only English letters and spaces ' '.
//There will be at least one word in s.

//

func lengthOfLastWord(_ s: String) -> Int {
    let splitedS = s.split(separator: " ")
    
    return splitedS[splitedS.count - 1].count
}

//Example 1:
//
//Input: s = "Hello World"
//Output: 5
//Explanation: The last word is "World" with length 5.
//Example 2:
//
//Input: s = "   fly me   to   the moon  "
//Output: 4
//Explanation: The last word is "moon" with length 4.
//Example 3:
//
//Input: s = "luffy is still joyboy"
//Output: 6
//Explanation: The last word is "joyboy" with length 6.

//Test cases:

let input = "   fly me   to   the moon  "
let answer = 4

if lengthOfLastWord(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


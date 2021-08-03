// Solved by Xecca

//242. Valid Anagram
//Difficult: Easy
//https://leetcode.com/problems/valid-anagram/

//Runtime: 32 ms, faster than 92.38% of Swift online submissions for Valid Anagram.
//Memory Usage: 14.3 MB, less than 88.27% of Swift online submissions for Valid Anagram.

//

//Given two strings s and t, return true if t is an anagram of s, and false otherwise.

//Constraints:
//
//1 <= s.length, t.length <= 5 * 10^4
//s and t consist of lowercase English letters.

//

func isAnagram(_ s: String, _ t: String) -> Bool {
    if s.count != t.count {
        return false
    }
    
    let alphS = fillAlphabet(s)
    let alphT = fillAlphabet(t)
    
    var i = 0
    while i < 26 {
        if alphS[i] != alphT[i] {
            return false
        }
        i += 1
    }
    
    return true
}

func fillAlphabet(_ str: String) -> [Int] {
    var alph = Array(repeating: 0, count: 26)
    
    for char in str {
        alph[Int(char.asciiValue! - 97)] += 1
    }
    
    return alph
}

//Example 1:
//
//Input: s = "anagram", t = "nagaram"
//Output: true
//Example 2:
//
//Input: s = "rat", t = "car"
//Output: false

//Test cases:

if isAnagram("anagram", "nagaram") == true { print("Correct!") } else { print("Error! Expected: \(true)") }


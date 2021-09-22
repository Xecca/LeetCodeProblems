// Solved by Xecca

//1961. Check If String Is a Prefix of Array
//Difficult: Easy
//https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/

//Runtime: 8 ms, faster than 94.74% of Swift online submissions for Check If String Is a Prefix of Array.
//Memory Usage: 14 MB, less than 84.21% of Swift online submissions for Check If String Is a Prefix of Array.

//

//Given a string s and an array of strings words, determine whether s is a prefix string of words.
//
//A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some positive k no larger than words.length.
//
//Return true if s is a prefix string of words, or false otherwise.

//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length <= 20
//1 <= s.length <= 1000
//words[i] and s consist of only lowercase English letters.

//

func isPrefixString(_ s: String, _ words: [String]) -> Bool {
    var newStr = ""
    var countChInNewStr = 0
    let sChCount = s.count
    
    for word in words {
        newStr.append(word)
        countChInNewStr += word.count
        if newStr == s {
            return true
        } else if countChInNewStr >= sChCount {
            return false
        }
    }
    
    return false
}

//

//Example 1:
//
//Input: s = "iloveleetcode", words = ["i","love","leetcode","apples"]
//Output: true
//Explanation:
//s can be made by concatenating "i", "love", and "leetcode" together.
//Example 2:
//
//Input: s = "iloveleetcode", words = ["apples","i","love","leetcode"]
//Output: false
//Explanation:
//It is impossible to make s using a prefix of arr.

//Test cases:

if isPrefixString("iloveleetcode", ["i","love","leetcode","apples"]) == true { print("Correct!") } else { print("Error! Expexted: \(["i","love","leetcode","apples"])") }


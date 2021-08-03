// Solved by Xecca

//1897. Redistribute Characters to Make All Strings Equal
//Difficult: Easy
//https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/

//Runtime: 84 ms, faster than 90.57% of Swift online submissions for Redistribute Characters to Make All Strings Equal.
//Memory Usage: 14.6 MB, less than 32.08% of Swift online submissions for Redistribute Characters to Make All Strings Equal.

//

//You are given an array of strings words (0-indexed).
//
//In one operation, pick two distinct indices i and j, where words[i] is a non-empty string, and move any character from words[i] to any position in words[j].
//
//Return true if you can make every string in words equal using any number of operations, and false otherwise.

//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length <= 100
//words[i] consists of lowercase English letters.

//

func makeEqual(_ words: [String]) -> Bool {
    var alphabet = Array(repeating: 0, count: 26)
    
    for word in words {
        for char in word {
            alphabet[Int(char.asciiValue! - 97)] += 1
        }
    }
    
    for char in alphabet {
        if char % words.count != 0 {
            return false
        }
    }
    
    return true
}

//Example 1:
//
//Input: words = ["abc","aabc","bc"]
//Output: true
//Explanation: Move the first 'a' in words[1] to the front of words[2],
//to make words[1] = "abc" and words[2] = "abc".
//All the strings are now equal to "abc", so return true.
//Example 2:
//
//Input: words = ["ab","a"]
//Output: false
//Explanation: It is impossible to make all the strings equal using the operation.

//Test cases:

if makeEqual(["abc","aabc","bc"]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }


// Solved by Xecca

//1684. Count the Number of Consistent Strings
//Difficult: Easy
//https://leetcode.com/problems/count-the-number-of-consistent-strings/

//Runtime: 240 ms, faster than 95.10% of Swift online submissions for Count the Number of Consistent Strings.
//Memory Usage: 14.9 MB, less than 52.94% of Swift online submissions for Count the Number of Consistent Strings.

//

//You are given a string allowed consisting of distinct characters and an array of strings words. A string is consistent if all characters in the string appear in the string allowed.
//
//Return the number of consistent strings in the array words.

//Constraints:
//
//1 <= words.length <= 104
//1 <= allowed.length <= 26
//1 <= words[i].length <= 10
//The characters in allowed are distinct.
//words[i] and allowed contain only lowercase English letters.

//

func countConsistentStrings(_ allowed: String, _ words: [String]) -> Int {
    var alphabet: [Int] = Array(repeating: 0, count: 26)
    var count = 0
    // let setAllowed = Set(allowed)
    
    for letter in allowed {
        alphabet[Int(letter.asciiValue!) - 97] = 1
    }
    
    for word in words {
        // let setWord = String(Set(word))
        for letter in word {
            if alphabet[Int(letter.asciiValue!) - 97] == 0 {
                count -= 1
                break
            }
        }
        count += 1
    }
    
    return count
}
//Example 1:
//
//Input: allowed = "ab", words = ["ad","bd","aaab","baa","badab"]
//Output: 2
//Explanation: Strings "aaab" and "baa" are consistent since they only contain characters 'a' and 'b'.
//Example 2:
//
//Input: allowed = "abc", words = ["a","b","c","ab","ac","bc","abc"]
//Output: 7
//Explanation: All strings are consistent.
//Example 3:
//
//Input: allowed = "cad", words = ["cc","acd","b","ba","bac","bad","ac","d"]
//Output: 4
//Explanation: Strings "cc", "acd", "ac", and "d" are consistent.

//Test cases:

if countConsistentStrings("abc", ["a","b","c","ab","ac","bc","abc"]) == 7 { print("Correct!") } else { print("Error! Expected: \(7)") }



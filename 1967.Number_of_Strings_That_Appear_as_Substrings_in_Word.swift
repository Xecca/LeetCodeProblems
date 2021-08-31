// Solved by Xecca

//1967. Number of Strings That Appear as Substrings in Word
//Difficult: Easy
//https://leetcode.com/problems/number-of-strings-that-appear-as-substrings-in-word/

//Runtime: 16 ms, faster than 86.49% of Swift online submissions for Number of Strings That Appear as Substrings in Word.
//Memory Usage: 15 MB, less than 45.95% of Swift online submissions for Number of Strings That Appear as Substrings in Word.

//

//Given an array of strings patterns and a string word, return the number of strings in patterns that exist as a substring in word.
//
//A substring is a contiguous sequence of characters within a string.

//Constraints:
//
//1 <= patterns.length <= 100
//1 <= patterns[i].length <= 100
//1 <= word.length <= 100
//patterns[i] and word consist of lowercase English letters.

//

func numOfStrings(_ patterns: [String], _ word: String) -> Int {
    var countOfStrings = 0
    
    for str in patterns {
        if word.contains(str) {
            countOfStrings += 1
        }
    }
    
    return countOfStrings
}

//Example 1:
//
//Input: patterns = ["a","abc","bc","d"], word = "abc"
//Output: 3
//Explanation:
//- "a" appears as a substring in "abc".
//- "abc" appears as a substring in "abc".
//- "bc" appears as a substring in "abc".
//- "d" does not appear as a substring in "abc".
//3 of the strings in patterns appear as a substring in word.
//Example 2:
//
//Input: patterns = ["a","b","c"], word = "aaaaabbbbb"
//Output: 2
//Explanation:
//- "a" appears as a substring in "aaaaabbbbb".
//- "b" appears as a substring in "aaaaabbbbb".
//- "c" does not appear as a substring in "aaaaabbbbb".
//2 of the strings in patterns appear as a substring in word.
//Example 3:
//
//Input: patterns = ["a","a","a"], word = "ab"
//Output: 3
//Explanation: Each of the patterns appears as a substring in word "ab".

//Test cases:

if numOfStrings(["a","abc","bc","d"], "abc") == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }


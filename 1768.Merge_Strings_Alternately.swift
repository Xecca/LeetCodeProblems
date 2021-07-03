// Solved by Xecca

//1768. Merge Strings Alternately
//Difficult: Easy
//https://leetcode.com/problems/merge-strings-alternately/

//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Merge Strings Alternately.
//Memory Usage: 14.2 MB, less than 60.87% of Swift online submissions for Merge Strings Alternately.

//

//You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
//
//Return the merged string.
//
//Constraints:
//
//1 <= word1.length, word2.length <= 100
//word1 and word2 consist of lowercase English letters.

//

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var mergedStr = ""
    var cInd = 0
    var i = 0
    var j = 0
    let lengthW1 = word1.count
    let lengthW2 = word2.count
    let commonLength = lengthW1 + lengthW2
    
    while cInd < commonLength {
        if i < lengthW1 {
            mergedStr.append(word1[String.Index(utf16Offset: i, in: word1)])
            i += 1
        }
        if j < lengthW2 {
            mergedStr.append(word2[String.Index(utf16Offset: j, in: word2)])
            j += 1
        }
        cInd += 1
    }
    
    return mergedStr
}

//Example 1:
//
//Input: word1 = "abc", word2 = "pqr"
//Output: "apbqcr"
//Explanation: The merged string will be merged as so:
//word1:  a   b   c
//word2:    p   q   r
//merged: a p b q c r
//Example 2:
//
//Input: word1 = "ab", word2 = "pqrs"
//Output: "apbqrs"
//Explanation: Notice that as word2 is longer, "rs" is appended to the end.
//word1:  a   b
//word2:    p   q   r   s
//merged: a p b q   r   s
//Example 3:
//
//Input: word1 = "abcd", word2 = "pq"
//Output: "apbqcd"
//Explanation: Notice that as word1 is longer, "cd" is appended to the end.
//word1:  a   b   c   d
//word2:    p   q
//merged: a p b q c   d

//Test cases:

if mergeAlternately("ab", "pqrs") == "apbqrs" { print("Correct!") } else { print("Error! Expected: \("apbqrs")") }


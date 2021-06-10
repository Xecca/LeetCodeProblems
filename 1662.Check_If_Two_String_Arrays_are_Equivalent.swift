// Solved by Xecca

//1662. Check If Two String Arrays are Equivalent
//Difficult: Easy
//https://leetcode.com/problems/check-if-two-string-arrays-are-equivalent/

//Runtime: 8 ms, faster than 84.85% of Swift online submissions for Check If Two String Arrays are Equivalent.
//Memory Usage: 14 MB, less than 92.93% of Swift online submissions for Check If Two String Arrays are Equivalent.

//

//Given two string arrays word1 and word2, return true if the two arrays represent the same string, and false otherwise.
//
//A string is represented by an array if the array elements concatenated in order forms the string.

//Constraints:
//
//1 <= word1.length, word2.length <= 103
//1 <= word1[i].length, word2[i].length <= 103
//1 <= sum(word1[i].length), sum(word2[i].length) <= 103
//word1[i] and word2[i] consist of lowercase letters.

//

func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
    
    return connectPartsInOneWord(word1) == connectPartsInOneWord(word2)
}

func connectPartsInOneWord(_ word: [String]) -> String {
    var str: String = ""
    
    for part in word {
        str.append(part)
    }
    
    return str
}

//Example 1:
//
//Input: word1 = ["ab", "c"], word2 = ["a", "bc"]
//Output: true
//Explanation:
//word1 represents string "ab" + "c" -> "abc"
//word2 represents string "a" + "bc" -> "abc"
//The strings are the same, so return true.
//Example 2:
//
//Input: word1 = ["a", "cb"], word2 = ["ab", "c"]
//Output: false
//Example 3:
//
//Input: word1  = ["abc", "d", "defg"], word2 = ["abcddefg"]
//Output: true

//Test cases:

if arrayStringsAreEqual(["ab", "c"], ["a", "bc"]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }



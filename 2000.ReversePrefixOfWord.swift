// Solved by Xecca

//2000. Reverse Prefix of Word
//Difficult: Easy
//https://leetcode.com/problems/reverse-prefix-of-word/

//Runtime: 8 ms, faster than 67.57% of Swift online submissions for Reverse Prefix of Word.
//Memory Usage: 14.3 MB, less than 59.46% of Swift online submissions for Reverse Prefix of Word.

//

//Given a 0-indexed string word and a character ch, reverse the segment of word that starts at index 0 and ends at the index of the first occurrence of ch (inclusive). If the character ch does not exist in word, do nothing.

//For example, if word = "abcdefd" and ch = "d", then you should reverse the segment that starts at 0 and ends at 3 (inclusive). The resulting string will be "dcbaefd".
//Return the resulting string.

//Constraints:
//
//1 <= word.length <= 250
//word consists of lowercase English letters.
//ch is a lowercase English letter.

//

func reversePrefix(_ word: String, _ ch: Character) -> String {
    let firstIndCharAppear = findFirstIndex(word, ch)
    
    if firstIndCharAppear == -1 {
        return word
    }
    
    var newWord = ""
    var i = firstIndCharAppear
    
    while i >= 0 {
        newWord.append(word[String.Index(utf16Offset: i, in: word)])
        i -= 1
    }
    i = firstIndCharAppear + 1
    
    while i < word.count {
        newWord.append(word[String.Index(utf16Offset: i, in: word)])
        i += 1
    }
    
    return newWord
}

func findFirstIndex(_ str: String, _ ch: Character) -> Int {
    
    for (i, char) in str.enumerated() {
        if char == ch {
            return i
        }
    }
    
    return -1
}

//

//Example 1:
//
//Input: word = "abcdefd", ch = "d"
//Output: "dcbaefd"
//Explanation: The first occurrence of "d" is at index 3.
//Reverse the part of word from 0 to 3 (inclusive), the resulting string is "dcbaefd".
//Example 2:
//
//Input: word = "xyxzxe", ch = "z"
//Output: "zxyxxe"
//Explanation: The first and only occurrence of "z" is at index 3.
//Reverse the part of word from 0 to 3 (inclusive), the resulting string is "zxyxxe".
//Example 3:
//
//Input: word = "abcd", ch = "z"
//Output: "abcd"
//Explanation: "z" does not exist in word.
//You should not do any reverse operation, the resulting string is "abcd".

//Test cases:

if reversePrefix("xyxzxe", "z") == "zxyxxe" { print("Correct!") } else { print("Error! Expexted: \("zxyxxe")") }


// Solved by Xecca

import Foundation

//2047. Number of Valid Words in a Sentence
//Difficult: Easy
//https://leetcode.com/problems/number-of-valid-words-in-a-sentence/

//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Number of Valid Words in a Sentence.
//Memory Usage: 14.2 MB, less than 93.33% of Swift online submissions for Number of Valid Words in a Sentence.
    
//

//A sentence consists of lowercase letters ('a' to 'z'), digits ('0' to '9'), hyphens ('-'), punctuation marks ('!', '.', and ','), and spaces (' ') only. Each sentence can be broken down into one or more tokens separated by one or more spaces ' '.
//
//A token is a valid word if all three of the following are true:
//
//It only contains lowercase letters, hyphens, and/or punctuation (no digits).
//There is at most one hyphen '-'. If present, it must be surrounded by lowercase characters ("a-b" is valid, but "-ab" and "ab-" are not valid).
//There is at most one punctuation mark. If present, it must be at the end of the token ("ab,", "cd!", and "." are valid, but "a!b" and "c.," are not valid).
//Examples of valid words include "a-b.", "afad", "ba-c", "a!", and "!".
//
//Given a string sentence, return the number of valid words in sentence.
//
//Constraints:
//
//1 <= sentence.length <= 1000
//sentence only contains lowercase English letters, digits, ' ', '-', '!', '.', and ','.
//There will be at least 1 token.

//

func countValidWords(_ sentence: String) -> Int {
    let arrOfWords = sentence.split(separator: " ")
    var validWordsNum = 0
    
    for word in arrOfWords {
        if checkWord(word) {
            validWordsNum += 1
        }
    }
    
    return validWordsNum
}

func checkWord(_ word: String.SubSequence) -> Bool {
    var hyphenCount = 0

    for (i, char) in word.enumerated() {
        let charAscii = char.asciiValue ?? 0
        
        if charAscii > 96 && charAscii < 123 {
            continue
        } else if charAscii > 47 && charAscii < 58 {
            return false
        } else {
            if char == "-" {
                if i == 0 || i == word.count - 1 {
                    return false
                } else {
                    if ((word[String.Index(utf16Offset: (i - 1), in: word)].asciiValue ?? 0) > 96 && (word[String.Index(utf16Offset: (i - 1), in: word)].asciiValue ?? 0) < 123 && (word[String.Index(utf16Offset: (i + 1), in: word)].asciiValue ?? 0) > 96 && (word[String.Index(utf16Offset: (i + 1), in: word)].asciiValue ?? 0) < 123) && hyphenCount == 0 {
                        hyphenCount += 1
                        continue
                    } else {
                        return false
                    }
                }
            } else {
                if i != word.count - 1 {
                    return false
                }
            }
        }
    }

    return true
}

//Example 1:
//
//Input: sentence = "cat and  dog"
//Output: 3
//Explanation: The valid words in the sentence are "cat", "and", and "dog".
//Example 2:
//
//Input: sentence = "!this  1-s b8d!"
//Output: 0
//Explanation: There are no valid words in the sentence.
//"!this" is invalid because it starts with a punctuation mark.
//"1-s" and "b8d" are invalid because they contain digits.
//Example 3:
//
//Input: sentence = "alice and  bob are playing stone-game10"
//Output: 5
//Explanation: The valid words in the sentence are "alice", "and", "bob", "are", and "playing".
//"stone-game10" is invalid because it contains digits.
//Example 4:
//
//Input: sentence = "he bought 2 pencils, 3 erasers, and 1  pencil-sharpener."
//Output: 6
//Explanation: The valid words in the sentence are "he", "bought", "pencils,", "erasers,", "and", and "pencil-sharpener.".

//Test cases:

let input = "he bought 2 pencils, 3 erasers, and 1  pencil-sharpener."
//let input2 = "babababab"
let answer = 6

if countValidWords(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


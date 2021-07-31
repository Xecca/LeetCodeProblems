// Solved by Xecca

//1935. Maximum Number of Words You Can Type
//Difficult: Easy
//https://leetcode.com/problems/maximum-number-of-words-you-can-type/

//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Maximum Number of Words You Can Type.
//Memory Usage: 14.5 MB, less than 70.27% of Swift online submissions for Maximum Number of Words You Can Type.

//

//There is a malfunctioning keyboard where some letter keys do not work. All other keys on the keyboard work properly.
//
//Given a string text of words separated by a single space (no leading or trailing spaces) and a string brokenLetters of all distinct letter keys that are broken, return the number of words in text you can fully type using this keyboard.
//
//Constraints:
//
//1 <= text.length <= 10^4
//0 <= brokenLetters.length <= 26
//text consists of words separated by a single space without any leading or trailing spaces.
//Each word only consists of lowercase English letters.
//brokenLetters consists of distinct lowercase English letters.

//

func canBeTypedWords(_ text: String, _ brokenLetters: String) -> Int {
    var brokenLettersInAlph = Array(repeating: 0, count: 26)
    let splitedText = text.split(separator: " ")
    var countOfWords = splitedText.count
    
    for char in brokenLetters {
        let charAscii = Int((char.asciiValue ?? 0) - 97)
        brokenLettersInAlph[charAscii] = 1
    }
    
    for word in splitedText {
        for char in word {
            let charAscii = Int((char.asciiValue ?? 0) - 97)
            if brokenLettersInAlph[charAscii] == 1 {
                countOfWords -= 1
                break
            }
        }
    }
    
    return countOfWords
}

//Example 1:
//
//Input: text = "hello world", brokenLetters = "ad"
//Output: 1
//Explanation: We cannot type "world" because the 'd' key is broken.
//Example 2:
//
//Input: text = "leet code", brokenLetters = "lt"
//Output: 1
//Explanation: We cannot type "leet" because the 'l' and 't' keys are broken.
//Example 3:
//
//Input: text = "leet code", brokenLetters = "e"
//Output: 0
//Explanation: We cannot type either word because the 'e' key is broken.

//Test cases:

if canBeTypedWords("hello world", "ad") == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }


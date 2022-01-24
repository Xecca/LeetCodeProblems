// Solved by Xecca

import Foundation

//520. Detect Capital
//Difficult: Easy
//https://leetcode.com/problems/detect-capital/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Detect Capital.
//Memory Usage: 14.4 MB, less than 15.38% of Swift online submissions for Detect Capital.

//

//We define the usage of capitals in a word to be right when one of the following cases holds:
//
//All letters in this word are capitals, like "USA".
//All letters in this word are not capitals, like "leetcode".
//Only the first letter in this word is capital, like "Google".
//Given a string word, return true if the usage of capitals in it is right.
//
//Constraints:
//
//1 <= word.length <= 100
//word consists of lowercase and uppercase English letters.

//

func detectCapitalUse(_ word: String) -> Bool {
    var countOfCapitals = 0
    
    for char in word {
        if char.isUppercase {
            countOfCapitals += 1
        }
    }
    
    if countOfCapitals == 1 && word[String.Index(utf16Offset: 0, in: word)].isUppercase {
        return true
    } else if countOfCapitals == word.count || countOfCapitals == 0 {
        return true
    }
    
    return false
}

//Example 1:
//
//Input: word = "USA"
//Output: true
//Example 2:
//
//Input: word = "FlaG"
//Output: false

//Test cases:

let input = "FlaG"
let answer = false

if detectCapitalUse(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


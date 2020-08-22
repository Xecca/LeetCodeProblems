//520. Detect Capital
//Сomplexity: Easy
//https://leetcode.com/problems/detect-capital/

//----------------------------------------------------
//Runtime: 4 ms, faster than 98.38% of Swift online submissions for Detect Capital.
//Memory Usage: 20.1 MB, less than 99.73% of Swift online submissions for Detect Capital.
//----------------------------------------------------

//Given a word, you need to judge whether the usage of capitals in it is right or not.
//
//We define the usage of capitals in a word to be right when one of the following cases holds:
//
//All letters in this word are capitals, like "USA".
//All letters in this word are not capitals, like "leetcode".
//Only the first letter in this word is capital, like "Google".
//Otherwise, we define that this word doesn't use capitals in a right way.

//----------------------------------------------------

func detectCapitalUse(_ word: String) -> Bool {
    
    var sum = 0

    for letter in word {
        if letter.isUppercase {
            sum += 1
        }
    }
    if word[String.Index(utf16Offset: 0, in: word)].isUppercase {
        if sum == word.count || sum == 1 {
            return true
        } else {
            return false
        }
    } else {
        if sum == 0 {
            return true
        }
    }

    return false
}

//Input:
let word = "RUS"
//Output: True

detectCapitalUse(word)


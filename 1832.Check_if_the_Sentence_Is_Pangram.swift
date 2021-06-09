// Solved by Xecca

//1832. Check if the Sentence Is Pangram
//Difficult: Easy
//https://leetcode.com/problems/longer-contiguous-segments-of-ones-than-zeros/

//Runtime: 4 ms, faster than 98.03% of Swift online submissions for Check if the Sentence Is Pangram.
//Memory Usage: 14.2 MB, less than 84.73% of Swift online submissions for Check if the Sentence Is Pangram.

//

//A pangram is a sentence where every letter of the English alphabet appears at least once.
//
//Given a string sentence containing only lowercase English letters, return true if sentence is a pangram, or false otherwise.

//Constraints:
//
//1 <= sentence.length <= 1000
//sentence consists of lowercase English letters.

//

func checkIfPangram(_ sentence: String) -> Bool {
    var alphabet: [Int] = Array(repeating: 0, count: 26)
    
    for letter in sentence {
        alphabet[Int(letter.asciiValue!) - 97] = 1
    }
    if alphabet.reduce(0, +) != 26 {
        return false
    }

    return true
}

//Example 1:
//
//Input: sentence = "thequickbrownfoxjumpsoverthelazydog"
//Output: true
//Explanation: sentence contains at least one of every letter of the English alphabet.
//Example 2:
//
//Input: sentence = "leetcode"
//Output: false

//Test cases:

if checkIfPangram("thequickbrownfoxjumpsoverthelazydog") == true { print("Correct!") } else { print("Error! Expected: \(true)") }



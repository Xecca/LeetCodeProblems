// Solved by Xecca

//1941. Check if All Characters Have Equal Number of Occurrences
//Difficult: Easy
//https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/

//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Check if All Characters Have Equal Number of Occurrences.
//Memory Usage: 14.6 MB, less than 16.67% of Swift online submissions for Check if All Characters Have Equal Number of Occurrences.

//

//Given a string s, return true if s is a good string, or false otherwise.
//
//A string s is good if all the characters that appear in s have the same number of occurrences (i.e., the same frequency).
//
//Constraints:
//
//1 <= s.length <= 1000
//s consists of lowercase English letters.

//

func areOccurrencesEqual(_ s: String) -> Bool {
    var arrOfChars: [Int] = Array(repeating: 0, count: 26)
    
    for char in s {
        let charAscii = Int((char.asciiValue ?? 0) - 97)
        arrOfChars[charAscii] += 1
    }
    let setOfChars = Set(arrOfChars)
    
    if setOfChars.count == 2 || setOfChars.count == 1 {
        return true
    }
    return false
}

//Example 1:
//
//Input: s = "abacbc"
//Output: true
//Explanation: The characters that appear in s are 'a', 'b', and 'c'. All characters occur 2 times in s.
//Example 2:
//
//Input: s = "aaabb"
//Output: false
//Explanation: The characters that appear in s are 'a' and 'b'.
//'a' occurs 3 times while 'b' occurs 2 times, which is not the same number of times.

//Test cases:

if areOccurrencesEqual("abacbc") == true { print("Correct!") } else { print("Error! Expected: \(true)") }


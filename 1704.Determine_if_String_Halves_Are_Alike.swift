// Solved by Xecca

//1704. Determine if String Halves Are Alike
//Difficult: Easy
//https://leetcode.com/problems/determine-if-string-halves-are-alike/

//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Determine if String Halves Are Alike.
//Memory Usage: 14.3 MB, less than 54.17% of Swift online submissions for Determine if String Halves Are Alike.

//

//You are given a string s of even length. Split this string into two halves of equal lengths, and let a be the first half and b be the second half.
//
//Two strings are alike if they have the same number of vowels ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'). Notice that s contains uppercase and lowercase letters.
//
//Return true if a and b are alike. Otherwise, return false.
////
//Constraints:
//
//2 <= s.length <= 1000
//s.length is even.
//s consists of uppercase and lowercase letters.

//

func halvesAreAlike(_ s: String) -> Bool {
    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    var a = 0
    var b = 0
    var i = 0
    let startIndexSecondString = s.count / 2
    
    for char in s {
        if vowels.contains(char) {
            if i < startIndexSecondString {
                    a += 1
                } else {
                    b += 1
                }
        }
        i += 1
    }
    
    return a == b
}

//Example 1:
//
//Input: s = "book"
//Output: true
//Explanation: a = "bo" and b = "ok". a has 1 vowel and b has 1 vowel. Therefore, they are alike.
//Example 2:
//
//Input: s = "textbook"
//Output: false
//Explanation: a = "text" and b = "book". a has 1 vowel whereas b has 2. Therefore, they are not alike.
//Notice that the vowel o is counted twice.
//Example 3:
//
//Input: s = "MerryChristmas"
//Output: false
//Example 4:
//
//Input: s = "AbCdEfGh"
//Output: true

//Test cases:

if halvesAreAlike("MerryChristmas") == false { print("Correct!") } else { print("Error! Expected: \(false)") }


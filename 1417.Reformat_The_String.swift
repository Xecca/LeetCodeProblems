// Solved by Xecca

//1417. Reformat The String
//Difficult: Easy
//https://leetcode.com/problems/reformat-the-string/

//Runtime: 112 ms, faster than 7.14% of Swift online submissions for Reformat The String.
//Memory Usage: 14.3 MB, less than 71.43% of Swift online submissions for Reformat The String.

//

//Given alphanumeric string s. (Alphanumeric string is a string consisting of lowercase English letters and digits).
//
//You have to find a permutation of the string where no letter is followed by another letter and no digit is followed by another digit. That is, no two adjacent characters have the same type.
//
//Return the reformatted string or return an empty string if it is impossible to reformat the string.

//Constraints:
//
//1 <= s.length <= 500
//s consists of only lowercase English letters and/or digits.

//

func reformat(_ s: String) -> String {

    var finalStr = ""
    var digitStr = ""
    var letterStr = ""

    for char in s {
        if char.isLowercase {
            letterStr.append(char)
        } else {
            digitStr.append(char)
        }
    }

    if abs(digitStr.count - letterStr.count) > 1 {
        return ""
    }

    if digitStr.count < letterStr.count {
        let swapStr = digitStr
        digitStr = letterStr
        letterStr = swapStr
    }
    
    var i = 0
    while i < digitStr.count {
        finalStr.append(digitStr[String.Index(utf16Offset: i, in: s)])
        if i < letterStr.count {
            finalStr.append(letterStr[String.Index(utf16Offset: i, in: s)])
        }
        i += 1
    }

    return finalStr

}

//Example 1:
//
//Input: s = "a0b1c2"
//Output: "0a1b2c"
//Explanation: No two adjacent characters have the same type in "0a1b2c". "a0b1c2", "0a1b2c", "0c2a1b" are also valid permutations.
//Example 2:
//
//Input: s = "leetcode"
//Output: ""
//Explanation: "leetcode" has only characters so we cannot separate them by digits.
//Example 3:
//
//Input: s = "1229857369"
//Output: ""
//Explanation: "1229857369" has only digits so we cannot separate them by characters.
//Example 4:
//
//Input: s = "covid2019"
//Output: "c2o0v1i9d"
//Example 5:
//
//Input: s = "ab123"
//Output: "1a2b3"

//Test cases:

if reformat("a0b1c2") == "0a1b2c" { print("Correct!") } else { print("Error! Expected: \("0a1b2c")") }
if reformat("leetcode") == "" { print("Correct!") } else { print("Error! Expected: \("")") }


// Solved by Xecca

import Foundation

//2259. Remove Digit From Number to Maximize Result
//Difficult: Easy
//https://leetcode.com/problems/remove-digit-from-number-to-maximize-result/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Remove Digit From Number to Maximize Result.
//Memory Usage: 14.1 MB, less than 84.00% of Swift online submissions for Remove Digit From Number to Maximize Result.

//

//You are given a string number representing a positive integer and a character digit.
//
//Return the resulting string after removing exactly one occurrence of digit from number such that the value of the resulting string in decimal form is maximized. The test cases are generated such that digit occurs at least once in number.
//

//Constraints:
//
//2 <= number.length <= 100
//number consists of digits from '1' to '9'.
//digit is a digit from '1' to '9'.
//digit occurs at least once in number.

//

func removeDigit(_ number: String, _ digit: Character) -> String {
    var maxVal = "0"
    var flexNum = number
    
    for (i, num) in number.enumerated() {
        if num == digit {
            flexNum.remove(at: String.Index(utf16Offset: i, in: flexNum))
        
            if flexNum > maxVal {
                maxVal = flexNum
            }
            flexNum.insert(digit, at: String.Index(utf16Offset: i, in: flexNum))
        }
    }

    return maxVal
}

//Example 1:
//
//Input: number = "123", digit = "3"
//Output: "12"
//Explanation: There is only one '3' in "123". After removing '3', the result is "12".
//Example 2:
//
//Input: number = "1231", digit = "1"
//Output: "231"
//Explanation: We can remove the first '1' to get "231" or remove the second '1' to get "123".
//Since 231 > 123, we return "231".
//Example 3:
//
//Input: number = "551", digit = "5"
//Output: "51"
//Explanation: We can remove either the first or second '5' from "551".
//Both result in the string "51".

//Test cases:

let input = "551"
let input2 = "5"
let answer = "51"

if removeDigit(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


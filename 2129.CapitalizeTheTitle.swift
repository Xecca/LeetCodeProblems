// Solved by Xecca

import Foundation

//2129. Capitalize the Title
//Difficult: Easy
//https://leetcode.com/problems/check-if-every-row-and-column-contains-all-numbers/

//Runtime: 7 ms, faster than 100.00% of Swift online submissions for Capitalize the Title.
//Memory Usage: 14 MB, less than 91.30% of Swift online submissions for Capitalize the Title.

//

//You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters. Capitalize the string by changing the capitalization of each word such that:
//
//If the length of the word is 1 or 2 letters, change all letters to lowercase.
//Otherwise, change the first letter to uppercase and the remaining letters to lowercase.
//Return the capitalized title.
//
//Constraints:
//
//1 <= title.length <= 100
//title consists of words separated by a single space without any leading or trailing spaces.
//Each word consists of uppercase and lowercase English letters and is non-empty.

//

func capitalizeTitle(_ title: String) -> String {
    let arrOfTitles = title.split(separator: " ")
    let length = arrOfTitles.count - 1
    var finalStr = ""
    var temp = ""
    
    for (i, title) in arrOfTitles.enumerated() {
        temp = title.lowercased()
        if title.count < 3 {
            finalStr.append(temp)
        } else {
            let tempChar = temp[String.Index(utf16Offset: 0, in: temp)].uppercased()
            temp.remove(at: String.Index(utf16Offset: 0, in: temp))
            temp.insert(Character(tempChar), at: String.Index(utf16Offset: 0, in: temp))
            finalStr.append(temp)
        }
        if i < length {
            finalStr.append(" ")
        }
    }
    
    return finalStr
}

//Example 1:
//
//Input: title = "capiTalIze tHe titLe"
//Output: "Capitalize The Title"
//Explanation:
//Since all the words have a length of at least 3, the first letter of each word is uppercase, and the remaining letters are lowercase.
//Example 2:
//
//Input: title = "First leTTeR of EACH Word"
//Output: "First Letter of Each Word"
//Explanation:
//The word "of" has length 2, so it is all lowercase.
//The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.
//Example 3:
//
//Input: title = "i lOve leetcode"
//Output: "i Love Leetcode"
//Explanation:
//The word "i" has length 1, so it is lowercase.
//The remaining words have a length of at least 3, so the first letter of each remaining word is uppercase, and the remaining letters are lowercase.

//Test cases:

let input = "First leTTeR of EACH Word"
let answer = "First Letter of Each Word"

if capitalizeTitle(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


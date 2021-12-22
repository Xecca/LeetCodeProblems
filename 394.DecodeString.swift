// Solved by Xecca

import Foundation

//394. Decode String
//Difficult: Medium
//https://leetcode.com/problems/decode-string/

//Runtime: 4 ms, faster than 86.96% of Swift online submissions for Decode String.
//Memory Usage: 14.1 MB, less than 75.78% of Swift online submissions for Decode String.
    
//

//Given an encoded string, return its decoded string.
//
//The encoding rule is: k[encoded_string], where the encoded_string inside the square brackets is being repeated exactly k times. Note that k is guaranteed to be a positive integer.
//
//You may assume that the input string is always valid; there are no extra white spaces, square brackets are well-formed, etc.
//
//Furthermore, you may assume that the original data does not contain any digits and that digits are only for those repeat numbers, k. For example, there will not be input like 3a or 2[4].
//
//Constraints:
//
//1 <= s.length <= 30
//s consists of lowercase English letters, digits, and square brackets '[]'.
//s is guaranteed to be a valid input.
//All the integers in s are in the range [1, 300].

//

func decodeString(_ s: String) -> String {
    var strArr: [Character] = Array(s)
    var i = 0
    
    while i < strArr.count {
        if strArr[i].asciiValue! > 47 && strArr[i].asciiValue! < 58 {
            let res = checkNum(i, strArr)
            let endOfBrackets = chechStringWithinBrackets(res[1], strArr)
            let newStr = createNewStrInChar(res[1], endOfBrackets, strArr, res[0])
            //remove string within brackets from array
            var removedCount = endOfBrackets - res[1] + res[2] + 1
            while removedCount > 0 {
                strArr.remove(at: i)
                removedCount -= 1
            }
            // insert newStr to strArr
            var multiplier = res[0]
            
            while multiplier > 0 {
                strArr.insert(contentsOf: newStr, at: i)
                multiplier -= 1
            }
            i -= 1
        }
        i += 1
    }

    return charArrToString(strArr)
}

func checkNum(_ currIndex: Int, _ charArr: [Character]) -> [Int] {
    var i = currIndex
    var strNum = ""
    var lengthOfNum = 0
    
    while charArr[i].asciiValue! > 47 && charArr[i].asciiValue! < 58 {
        strNum.append(String(charArr[i]))
        lengthOfNum += 1
        i += 1
    }
    
    return [(Int(strNum) ?? 0), i, lengthOfNum] // [strNum, indexOfBracket, lengthOfNum]
}

func chechStringWithinBrackets(_ startPosition: Int, _ charArr: [Character]) -> Int {
    var closedBrackets = 1
    var i = startPosition + 1
    
    while closedBrackets != 0 {
        if charArr[i] == "[" {
            closedBrackets += 1
        } else if charArr[i] == "]" {
            closedBrackets -= 1
        }
        i += 1
    }
    i -= 1
    
    return i
}

func createNewStrInChar(_ startBracket: Int, _ endBracket: Int, _ charArr: [Character], _ countOfStr: Int) -> [Character] {
    var newStrInChar: [Character] = Array(repeating: "a", count: (endBracket - startBracket - 1))
    var i = startBracket + 1
    var j = 0
    
    while i < endBracket {
        newStrInChar[j] = charArr[i]
        i += 1
        j += 1
    }
    
    return newStrInChar
}

func charArrToString(_ charArr: [Character]) -> String {
    var newStr = ""
    for char in charArr {
        newStr.append(char)
    }
    
    return newStr
}

//Example 1:
//
//Input: s = "3[a]2[bc]"
//Output: "aaabcbc"
//Example 2:
//
//Input: s = "3[a2[c]]"
//Output: "accaccacc"
//Example 3:
//
//Input: s = "2[abc]3[cd]ef"
//Output: "abcabccdcdcdef"

//Test cases:

let input = "2[abc]3[cd]ef"
let answer = "abcabccdcdcdef"

if decodeString(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


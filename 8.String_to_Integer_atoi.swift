//8. String to Integer (atoi)
//https://leetcode.com/problems/string-to-integer-atoi/
//Runtime: 8 ms, faster than 98.25% of Swift online submissions for String to Integer (atoi).
//Memory Usage: 21.6 MB, less than 25.00% of Swift online submissions for String to Integer (atoi).
//----------------------------------------------------
//Implement atoi which converts a string to an integer.
//
//The function first discards as many whitespace characters as necessary until the first non-whitespace character is found. Then, starting from this character, takes an optional initial plus or minus sign followed by as many numerical digits as possible, and interprets them as a numerical value.
//
//The string can contain additional characters after those that form the integral number, which are ignored and have no effect on the behavior of this function.
//
//If the first sequence of non-whitespace characters in str is not a valid integral number, or if no such sequence exists because either str is empty or it contains only whitespace characters, no conversion is performed.
//
//If no valid conversion could be performed, a zero value is returned.
//
//Note:
//
//Only the space character ' ' is considered as whitespace character.
//Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. If the numerical value is out of the range of representable values, INT_MAX (231 − 1) or INT_MIN (−231) is returned.
//----------------------------------------------------

func myAtoi(_ str: String) -> Int {
    if str == "" {
        return 0
    }
    var numberStr = ""
    var sign = 1
    var i = 0
    
    let newString = str
    let lengthStr = newString.count
    
    if lengthStr != 1 {
        for curInd in newString {
            if curInd == " " || curInd == "\0" || curInd == "\t" || curInd == "\n" || curInd == "\r"  {
                print(curInd)
                i += 1
            } else {
                break
            }
        }
        if i < lengthStr - 1 {
            if newString[newString.index(newString.startIndex, offsetBy: i)] == "-" || newString[newString.index(newString.startIndex, offsetBy: i)] == "+" {
                if newString[newString.index(newString.startIndex, offsetBy: i)] == "-" {
                    sign = -1
                }
                i += 1
            }
            
            while newString[newString.index(newString.startIndex, offsetBy: i)] >= "0" && newString[newString.index(newString.startIndex, offsetBy: i)] <= "9" {
                numberStr.append(newString[newString.index(newString.startIndex, offsetBy: i)])
                if i < lengthStr - 1 {
                    i += 1
                } else {
                    break
                }
            }
        }
    } else {
        numberStr.append(newString[newString.index(newString.startIndex, offsetBy: 0)])
    }
    
    let number = Int(numberStr) ?? 0
    if (number < Int32.min || number > Int32.max) || (numberStr.count >= 19 && number == 0) {
        if sign == -1 {
            return Int(Int32.min)
        } else {
            return Int(Int32.max)
        }
    }
    return Int(number) * sign
}

//Example 1:
//
//Input: "42"
//Output: 42
//Example 2:
//
//Input:
//let str = "   -42"
//Output: -42
//Explanation: The first non-whitespace character is '-', which is the minus sign.
//             Then take as many numerical digits as possible, which gets 42.
//Example 3:
//
//Input:
let str = "4193 with words"
//Output: 4193
//Explanation: Conversion stops at digit '3' as the next character is not a numerical digit.
//Example 4:
//
//Input: "words and 987"
//Output: 0
//Explanation: The first non-whitespace character is 'w', which is not a numerical
//             digit or a +/- sign. Therefore no valid conversion could be performed.
//Example 5:
//
//Input: "-91283472332"
//Output: -2147483648
//Explanation: The number "-91283472332" is out of the range of a 32-bit signed integer.
//             Thefore INT_MIN (−231) is returned.

myAtoi(str)


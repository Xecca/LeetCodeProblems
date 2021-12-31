// Solved by Xecca

import Foundation

//12. Integer to Roman
//Difficult: Medium
//https://leetcode.com/problems/integer-to-roman/

//Runtime: 28 ms, faster than 45.00% of Swift online submissions for Integer to Roman.
//Memory Usage: 14.3 MB, less than 15.00% of Swift online submissions for Integer to Roman.

//

//Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given an integer, convert it to a roman numeral.
//
//Constraints:
//
//1 <= num <= 3999

//

func intToRoman(_ num: Int) -> String {
    let strNum: String = String(num)
    var strArr: [String] = Array(repeating: "0", count: strNum.count)
    var romanNum: String = ""
    
    for (i, char) in strNum.reversed().enumerated() {
        let convNum = String(char)
        strArr[i] = createDecimal(convNum, i)
        romanNum.insert(contentsOf: generateRoman(strArr[i]), at: String.Index(utf16Offset: 0, in: romanNum))
    }
                                       
    return romanNum
}

func createDecimal(_ num: String, _ place: Int) -> String {
    var i = place
    var digNum = num
    
    while i > 0 {
        digNum += "0"
        i -= 1
    }
    
    return digNum
}

func generateRoman(_ strNum: String) -> String {
    let num = Int(strNum)!
    
    if num == 0 {
        return ""
    }
    let charNum = strNum[String.Index(utf16Offset: 0, in: strNum)]
    let startNum = Int(String(charNum))!
    let dict: [Int: String] = [
        1: "I",
        4: "IV",
        5: "V",
        9: "IX",
        10: "X",
        40: "XL",
        50: "L",
        90: "XC",
        100: "C",
        400: "CD",
        500: "D",
        900: "CM",
        1000: "M"
    ]
    var finalStr = ""
    
    switch startNum {
        case 1,4,5,9:
            return dict[num] ?? ""
        default:
            let decimal = strNum.count
            var multiplier = 1
        
            for _ in 1..<decimal {
                multiplier *= 10
            }
            if startNum < 4 {
                for _ in 0..<startNum {
                    finalStr += dict[multiplier]!
                }
            } else {
                let reminder = startNum - 5

                finalStr.append(dict[multiplier * 5]!)
                for _ in 0..<reminder {
                    finalStr += dict[multiplier]!
                }
            }
    }
    
    return finalStr
}

//Example 1:
//
//Input: num = 3
//Output: "III"
//Explanation: 3 is represented as 3 ones.
//Example 2:
//
//Input: num = 58
//Output: "LVIII"
//Explanation: L = 50, V = 5, III = 3.
//Example 3:
//
//Input: num = 1994
//Output: "MCMXCIV"
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

//Test cases:

let input = 1994
let answer = "MCMXCIV"

if intToRoman(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


// Solved by Xecca

import Foundation

//1291. Sequential Digits
//Difficult: Medium
//https://leetcode.com/problems/sequential-digits/

//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Sequential Digits.
//Memory Usage: 13.9 MB, less than 100.00% of Swift online submissions for Sequential Digits.

//

//An integer has sequential digits if and only if each digit in the number is one more than the previous digit.
//
//Return a sorted list of all the integers in the range [low, high] inclusive that have sequential digits.
//
//Constraints:
//
//10 <= low <= high <= 10^9

//

func sequentialDigits(_ low: Int, _ high: Int) -> [Int] {
    var currNum: String = String(low)
    var num: [String] = []
    var i = 1
    var finalArr: [Int] = []
    
    while true {
        num = makeSeqDigits(currNum, i)
        let strNum = Int(num.joined(separator: "")) ?? 0
        
        if strNum >= low && strNum <= high {
            finalArr.append(strNum)
        }
        if strNum > high {
            break
        }
        if num[num.count - 1] == "9" {
            currNum += "1"
            i = 1
        } else {
            i += 1
        }
    }
    
    return finalArr
}

func makeSeqDigits(_ strNum: String, _ firstDigit: Int) -> [String] {
    var num: [String] = []
    var j = 0
    var i = firstDigit
    let length = strNum.count
    
    while j < length {
        num.append(String(i))
        i += 1
        j += 1
    }
    
    return num
}

//Example 1:
//
//Input: low = 100, high = 300
//Output: [123,234]
//Example 2:
//
//Input: low = 1000, high = 13000
//Output: [1234,2345,3456,4567,5678,6789,12345]

//Test cases:

let input = 1000
let input2 = 13000
let answer = [1234,2345,3456,4567,5678,6789,12345]

if sequentialDigits(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


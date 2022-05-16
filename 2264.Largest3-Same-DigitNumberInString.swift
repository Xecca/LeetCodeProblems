// Solved by Xecca

import Foundation

//2264. Largest 3-Same-Digit Number in String
//Difficult: Easy
//https://leetcode.com/problems/largest-3-same-digit-number-in-string/

//Runtime: 4 ms, faster than 69.44% of Swift online submissions for Largest 3-Same-Digit Number in String.
//Memory Usage: 13.9 MB, less than 100.00% of Swift online submissions for Largest 3-Same-Digit Number in String.

//

//You are given a string num representing a large integer. An integer is good if it meets the following conditions:
//
//It is a substring of num with length 3.
//It consists of only one unique digit.
//Return the maximum good integer as a string or an empty string "" if no such integer exists.
//
//Note:
//
//A substring is a contiguous sequence of characters within a string.
//There may be leading zeroes in num or a good integer.

//Constraints:
//
//3 <= num.length <= 1000
//num only consists of digits.

//

func largestGoodInteger(_ num: String) -> String {
    let length = num.count
    var numArr: [Int] = Array(repeating: 0, count: length)
    
    for (i, dig) in num.enumerated() {
        numArr[i] = Int(String(dig))!
    }
    
    var maxGoodNum = -1
    var start = 0
    var end = 2
    
    while end < length {
        if numArr[start] == numArr[end] && numArr[start] == numArr[start + 1] {
            let currNum = numArr[start] + numArr[start] * 10 + numArr[start] * 100
            
            if currNum > maxGoodNum {
                maxGoodNum = currNum
            }
            start += 3
            end = start + 2
        } else {
            start += 1
            end = start + 2
        }
    }
    
    if maxGoodNum == -1 {
        return ""
    } else if maxGoodNum == 0 {
        return "000"
    }
    
    return String(maxGoodNum)
}

//Example 1:
//
//Input: num = "6777133339"
//Output: "777"
//Explanation: There are two distinct good integers: "777" and "333".
//"777" is the largest, so we return "777".
//Example 2:
//
//Input: num = "2300019"
//Output: "000"
//Explanation: "000" is the only good integer.
//Example 3:
//
//Input: num = "42352338"
//Output: ""
//Explanation: No substring of length 3 consists of only one unique digit. Therefore, there are no good integers.

//Test cases:

let input = "6777133339"
let answer = "777"

if largestGoodInteger(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


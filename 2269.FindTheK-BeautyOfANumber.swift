// Solved by Xecca

import Foundation

//2269. Find the K-Beauty of a Number
//Difficult: Easy
//https://leetcode.com/problems/find-the-k-beauty-of-a-number/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Find the K-Beauty of a Number.
//Memory Usage: 13.7 MB, less than 50.00% of Swift online submissions for Find the K-Beauty of a Number.

//

//The k-beauty of an integer num is defined as the number of substrings of num when it is read as a string that meet the following conditions:
//
//It has a length of k.
//It is a divisor of num.
//Given integers num and k, return the k-beauty of num.
//
//Note:
//
//Leading zeros are allowed.
//0 is not a divisor of any value.
//A substring is a contiguous sequence of characters in a string.

//Constraints:
//
//1 <= num <= 109
//1 <= k <= num.length (taking num as a string)

//

func divisorSubstrings(_ num: Int, _ k: Int) -> Int {
    var beautyCount = 0
    let strNum = String(num)
    let length = strNum.count
    var strArrNum: [String] = Array(repeating: "", count: length)
    
    for (ind, numStr) in strNum.enumerated() {
        strArrNum[ind] = String(numStr)
    }
    let gap = k - 1
    var i = 0
    var j = i + gap
    
    while j < length {
        let subNum = strArrNum[i...j]
        let concatSubNum = subNum.joined()
        let currNum = Int(concatSubNum)!
        
        if currNum != 0 {
            if num % currNum == 0 {
                beautyCount += 1
            }
        }
        i += 1
        j = i + gap
    }
    
    return beautyCount
}

//Example 1:
//
//Input: num = 240, k = 2
//Output: 2
//Explanation: The following are the substrings of num of length k:
//- "24" from "240": 24 is a divisor of 240.
//- "40" from "240": 40 is a divisor of 240.
//Therefore, the k-beauty is 2.
//Example 2:
//
//Input: num = 430043, k = 2
//Output: 2
//Explanation: The following are the substrings of num of length k:
//- "43" from "430043": 43 is a divisor of 430043.
//- "30" from "430043": 30 is not a divisor of 430043.
//- "00" from "430043": 0 is not a divisor of 430043.
//- "04" from "430043": 4 is not a divisor of 430043.
//- "43" from "430043": 43 is a divisor of 430043.
//Therefore, the k-beauty is 2.

//Test cases:

let input = 430043
let answer = 2

if divisorSubstrings(input, answer) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


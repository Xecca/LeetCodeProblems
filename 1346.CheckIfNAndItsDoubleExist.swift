// Solved by Xecca

import Foundation

//1346. Check If N and Its Double Exist
//Difficult: Easy
//https://leetcode.com/problems/check-if-n-and-its-double-exist/

//Runtime: 20 ms, faster than 99.16% of Swift online submissions for Check If N and Its Double Exist.
//Memory Usage: 13.7 MB, less than 98.32% of Swift online submissions for Check If N and Its Double Exist.

//

//Given an array arr of integers, check if there exists two integers N and M such that N is the double of M ( i.e. N = 2 * M).
//
//More formally check if there exists two indices i and j such that :
//
//i != j
//0 <= i, j < arr.length
//arr[i] == 2 * arr[j]
//
//Constraints:
//
//2 <= arr.length <= 500
//-10^3 <= arr[i] <= 10^3
//

func checkIfExist(_ arr: [Int]) -> Bool {
    var i = 0
    var j = 0
    let length = arr.count
    
    while i < length - 1 {
        j = i + 1
        while j < length {
            if arr[i] == arr[j] * 2 || arr[i] * 2 == arr[j] {
                return true
            }
            j += 1
        }
        i += 1
    }

    return false
}

//Example 1:
//
//Input: arr = [10,2,5,3]
//Output: true
//Explanation: N = 10 is the double of M = 5,that is, 10 = 2 * 5.
//Example 2:
//
//Input: arr = [7,1,14,11]
//Output: true
//Explanation: N = 14 is the double of M = 7,that is, 14 = 2 * 7.
//Example 3:
//
//Input: arr = [3,1,7,11]
//Output: false
//Explanation: In this case does not exist N and M, such that N = 2 * M.

//Test cases:

var input = [7,1,14,11]
let answer = true

if checkIfExist(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


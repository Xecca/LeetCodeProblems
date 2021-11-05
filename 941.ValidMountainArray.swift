// Solved by Xecca

import Foundation

//941. Valid Mountain Array
//Difficult: Easy
//https://leetcode.com/problems/valid-mountain-array/

//Runtime: 200 ms, faster than 97.27% of Swift online submissions for Valid Mountain Array.
//Memory Usage: 14.5 MB, less than 24.55% of Swift online submissions for Valid Mountain Array.

//

//Given an array of integers arr, return true if and only if it is a valid mountain array.
//
//Recall that arr is a mountain array if and only if:
//
//arr.length >= 3
//There exists some i with 0 < i < arr.length - 1 such that:
//arr[0] < arr[1] < ... < arr[i - 1] < arr[i]
//arr[i] > arr[i + 1] > ... > arr[arr.length - 1]
//
//Constraints:
//
//1 <= arr.length <= 10^4
//0 <= arr[i] <= 10^4
//

func validMountainArray(_ arr: [Int]) -> Bool {
    let length = arr.count
    
    if length < 3 {
        return false
    }
    var i = 1

    while i < length && arr[i] > arr[i - 1] {
        i += 1
    }
    if i == 1 || i == length || arr[i] >= arr[i - 1] {
        return false
    }
    while i < length && arr[i] < arr[i - 1] {
        i += 1
    }
    if i == length {
        return true
    }

    return false
}

//Example 1:
//
//Input: arr = [2,1]
//Output: false
//Example 2:
//
//Input: arr = [3,5,5]
//Output: false
//Example 3:
//
//Input: arr = [0,3,2,1]
//Output: true

//Test cases:

var input = [0,3,2,1]
let answer = true

if validMountainArray(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


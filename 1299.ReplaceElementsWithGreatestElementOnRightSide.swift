// Solved by Xecca

import Foundation

//1299. Replace Elements with Greatest Element on Right Side
//Difficult: Easy
//https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/

//Runtime: 205 ms, faster than 27.54% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
//Memory Usage: 14.5 MB, less than 24.55% of Swift online submissions for Valid Mountain Array.Memory Usage: 14.9 MB, less than 85.51% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
    
//

//Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.
//
//After doing so, return the array.
//
//Constraints:
//
//1 <= arr.length <= 10^4
//1 <= arr[i] <= 10^5
//

func replaceElements(_ arr: [Int]) -> [Int] {
    var i = 0
    let length = arr.count
    var finalArr = Array(repeating: -1, count: length)
    
    while i < length - 1 {
        finalArr[i] = (arr[(i + 1)..<length]).max()!
        i += 1
    }
    
    return finalArr
}

//Example 1:
//
//Input: arr = [17,18,5,4,6,1]
//Output: [18,6,6,6,1,-1]
//Explanation:
//- index 0 --> the greatest element to the right of index 0 is index 1 (18).
//- index 1 --> the greatest element to the right of index 1 is index 4 (6).
//- index 2 --> the greatest element to the right of index 2 is index 4 (6).
//- index 3 --> the greatest element to the right of index 3 is index 4 (6).
//- index 4 --> the greatest element to the right of index 4 is index 5 (1).
//- index 5 --> there are no elements to the right of index 5, so we put -1.
//Example 2:
//
//Input: arr = [400]
//Output: [-1]
//Explanation: There are no elements to the right of index 0.

//Test cases:

var input = [17,18,5,4,6,1]
let answer = [18,6,6,6,1,-1]

if replaceElements(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


// Solved by Xecca

import Foundation

//1200. Minimum Absolute Difference
//Difficult: Easy
//https://leetcode.com/problems/minimum-absolute-difference/

//Runtime: 384 ms, faster than 100.00% of Swift online submissions for Minimum Absolute Difference.
//Memory Usage: 18.2 MB, less than 61.54% of Swift online submissions for Minimum Absolute Difference.
    
//

//Given an array of distinct integers arr, find all pairs of elements with the minimum absolute difference of any two elements.
//
//Return a list of pairs in ascending order(with respect to pairs), each pair [a, b] follows
//
//a, b are from arr
//a < b
//b - a equals to the minimum absolute difference of any two elements in arr
//
//Constraints:
//
//2 <= arr.length <= 10^5
//-10^6 <= arr[i] <= 10^6

//

func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
    let sortedArr = arr.sorted()
    var finalArr: [[Int]] = []
    var i = 1
    var minDiff = Int.max  // [diffVal, index]
    let length = sortedArr.count
    
    while i < length {
        let diff = abs(sortedArr[i] - sortedArr[i - 1])
        if diff < minDiff {
            minDiff = diff
        }
        i += 1
    }
    i = 1
    while i < length {
        let diff = abs(sortedArr[i] - sortedArr[i - 1])
        if diff == minDiff {
            finalArr.append([sortedArr[i - 1], sortedArr[i]])
        }
        i += 1
    }
    
    return finalArr
}

//Example 1:
//
//Input: arr = [4,2,1,3]
//Output: [[1,2],[2,3],[3,4]]
//Explanation: The minimum absolute difference is 1. List all pairs with difference equal to 1 in ascending order.
//Example 2:
//
//Input: arr = [1,3,6,10,15]
//Output: [[1,3]]
//Example 3:
//
//Input: arr = [3,8,-10,23,19,-4,-14,27]
//Output: [[-14,-10],[19,23],[23,27]]

//Test cases:

let input = [3,8,-10,23,19,-4,-14,27]
let answer = [[-14,-10],[19,23],[23,27]]

if minimumAbsDifference(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


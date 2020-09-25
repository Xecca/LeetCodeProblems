// Solved by Xecca

//1588. Sum of All Odd Length Subarrays
//Сomplexity: Easy
//https://leetcode.com/problems/sum-of-all-odd-length-subarrays/

//----------------------------------------------------
//Runtime: 16 ms, faster than 81.25% of Swift online submissions for Sum of All Odd Length Subarrays.
//Memory Usage: 20.5 MB, less than 96.88% of Swift online submissions for Sum of All Odd Length Subarrays.
//----------------------------------------------------

//Given an array of positive integers arr, calculate the sum of all possible odd-length subarrays.
//
//A subarray is a contiguous subsequence of the array.
//
//Return the sum of all odd-length subarrays of arr.

//----------------------------------------------------

func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
    var sumSubArr = 0
    let length = arr.count
    var subArrLength = 1
    var i = 0
    var startIndex = 0
    var count = 0
    
    while subArrLength <= length {
        i = 0
        startIndex = 0
        while i < length {
            count = 0
            i = startIndex
            while count < subArrLength && i < length {
                sumSubArr += arr[i]
                count += 1
                i += 1
            }
            startIndex += 1
        }
        subArrLength += 2
    }
    
    return sumSubArr
}

//Input:
let arr = [1,4,2,5,3]
//Output: 58
//Explanation: The odd-length subarrays of arr and their sums are:
//[1] = 1
//[4] = 4
//[2] = 2
//[5] = 5
//[3] = 3
//[1,4,2] = 7
//[4,2,5] = 11
//[2,5,3] = 10
//[1,4,2,5,3] = 15
//If we add all these together we get 1 + 4 + 2 + 5 + 3 + 7 + 11 + 10 + 15 = 58

sumOddLengthSubarrays(arr)


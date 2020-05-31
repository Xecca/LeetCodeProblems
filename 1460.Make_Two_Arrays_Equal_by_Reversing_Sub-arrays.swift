//1460. Make Two Arrays Equal by Reversing Sub-arrays
//https://leetcode.com/problems/make-two-arrays-equal-by-reversing-sub-arrays
//Runtime: 68 ms, faster than 100.00% of Swift online submissions for Make Two Arrays Equal by Reversing Sub-arrays.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Make Two Arrays Equal by Reversing Sub-arrays.
//----------------------------------------------------
//Given two integer arrays of equal length target and arr.
//
//In one step, you can select any non-empty sub-array of arr and reverse it. You are allowed to make any number of steps.
//
//Return True if you can make arr equal to target, or False otherwise.
//----------------------------------------------------

func canBeEqual(_ target: [Int], _ arr: [Int]) -> Bool {
    let length = target.count
    
//    if length == 1 && target[0] == arr[0] {
//        return true
//    }
    var newArr = arr
    var i = 0
    var j = 0
    var tempVal = 0
    
    while i < length {
        if target[i] != newArr[j] && j == length - 1 {
            return false
        } else if target[i] == newArr[j] {
            tempVal = newArr[i]
            newArr[i] = target[i]
            newArr[j] = tempVal
            if target[i] == newArr[j] && i == length - 1 {
                return true
            }
            i += 1
            tempVal = 0
            j = i
        } else {
            j += 1
        }
    }
    
    return false
}

//Input: target = [1,2,3,4], arr = [2,4,1,3]
//Output: true
//Explanation: You can follow the next steps to convert arr to target:
//1- Reverse sub-array [2,4,1], arr becomes [1,4,2,3]
//2- Reverse sub-array [4,2], arr becomes [1,2,4,3]
//3- Reverse sub-array [4,3], arr becomes [1,2,3,4]
//There are multiple ways to convert arr to target, this is not the only way to do so.

//Input:
let target = [630,262,255,927,255,924,310,872,492,750,376,651,312,445,238,330,149,604,714,48,852,444], arr = [444,927,48,924,262,376,852,238,872,630,310,492,149,255,651,255,750,604,445,330,312,714]
//Output: true

canBeEqual(target, arr)


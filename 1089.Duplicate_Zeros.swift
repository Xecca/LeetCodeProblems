// Solved by Xecca

//1089. Duplicate Zeros
//Сomplexity: Easy
//https://leetcode.com/problems/duplicate-zeros/

//----------------------------------------------------
//Runtime: 32 ms, faster than 100.00% of Swift online submissions for Duplicate Zeros.
//Memory Usage: 14.7 MB, less than 97.88% of Swift online submissions for Duplicate Zeros.
//----------------------------------------------------

//Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.
//
//Note that elements beyond the length of the original array are not written.
//
//Do the above modifications to the input array in place, do not return anything from your function.

//----------------------------------------------------

func duplicateZeros(_ arr: inout [Int]) {
    var i = 0
    while i < arr.count {
        if arr[i] == 0 {
            arr.insert(0, at: i)
            arr.remove(at: arr.count - 1)
            i += 1
        }
        i += 1
    }
}

//Input:
var arr = [1,0,2,3,0,4,5,0]
//Output: null
//Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]

duplicateZeros(&arr)


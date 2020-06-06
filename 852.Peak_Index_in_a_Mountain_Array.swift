//852. Peak Index in a Mountain Array
//https://leetcode.com/problems/peak-index-in-a-mountain-array/
//
//Runtime: 76 ms, faster than 98.09% of Swift online submissions for Peak Index in a Mountain Array.
//Memory Usage: 21 MB, less than 83.89% of Swift online submissions for Peak Index in a Mountain Array.
////----------------------------------------------------
//Let's call an array A a mountain if the following properties hold:
//
//A.length >= 3
//There exists some 0 < i < A.length - 1 such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]
//Given an array that is definitely a mountain, return any i such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].
//----------------------------------------------------

func peakIndexInMountainArray(_ A: [Int]) -> Int {
    var i = 0
    
    while A[i] < A[i + 1] && i < A.count {
        i += 1
    }
    
    return i
}

//Input:
let arr = [0,2,1,0]
//Output: 1

peakIndexInMountainArray(arr)


//1207. Unique Number of Occurrences
//https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/
//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Unique Number of Occurrences.
//Memory Usage: 22.8 MB, less than 8.23% of Swift online submissions for Unique Number of Occurrences.
////----------------------------------------------------
//Given an array of integers arr, write a function that returns true if and only if the number of occurrences of each value in the array is unique.
//----------------------------------------------------

func uniqueOccurrences(_ arr: [Int]) -> Bool {
    var appearNum = [Int : Int]()
    var newArr = [Int]()

    for num in arr {
        appearNum[num, default: 0] += 1
    }

    newArr = [Int](appearNum.values)
    newArr.sort()
    return ifUnique(newArr)
}

func ifUnique(_ arr: [Int]) -> Bool {
    var i = 0

    while i < arr.count - 1 {
        if arr[i] == arr[i + 1] {
            return false
        }
        i += 1
    }

    return true
}

//Input:
let arr = [1,2,2,1,1,3]
//Output: true
//Explanation: The value 1 has 3 occurrences, 2 has 2 and 3 has 1. No two values have the same number of occurrences.

uniqueOccurrences(arr)




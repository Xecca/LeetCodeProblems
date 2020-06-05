//1403. Minimum Subsequence in Non-Increasing Order
//https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/
//Runtime: 72 ms, faster than 90.74% of Swift online submissions for Minimum Subsequence in Non-Increasing Order.
//Memory Usage: 21.2 MB, less than 61.11% of Swift online submissions for Minimum Subsequence in Non-Increasing Order.
////----------------------------------------------------
//Given the array nums, obtain a subsequence of the array whose sum of elements is strictly greater than the sum of the non included elements in such subsequence.
//
//If there are multiple solutions, return the subsequence with minimum size and if there still exist multiple solutions, return the subsequence with the maximum total sum of all its elements. A subsequence of an array can be obtained by erasing some (possibly zero) elements from the array.
//
//Note that the solution with the given constraints is guaranteed to be unique. Also return the answer sorted in non-increasing order.
//----------------------------------------------------

func minSubsequence(_ nums: [Int]) -> [Int] {
    var newArr = [Int]()
    var newNums = nums.sorted()
    var newArrSum = 0
    var numsSum = sumArray(nums)
    var maxNum = 0
    
    while newNums.count > 0 {
        maxNum = newNums[newNums.count - 1]
        newArrSum += maxNum
        numsSum -= maxNum
        newArr.append(maxNum)
        if newArrSum > numsSum {
            return newArr
        }
        newNums.remove(at: newNums.count - 1)
    }
    
    return newArr
}

func sumArray(_ arr: [Int]) -> Int {
    var i = 0
    var sumArr = 0
    
    while i < arr.count {
        sumArr += arr[i]
        i += 1
    }
    
    return sumArr
}

//func removeNumber(_ arr: [Int], _ num: Int) -> [Int] {
//    var i = 0
//    var newArr = arr
//
//    while i < arr.count {
//        if newArr[i] == num {
//            newArr.remove(at: i)
//            return newArr
//        }
//        i += 1
//    }
//
//    return newArr
//}

//Input:
let nums = [4,3,10,9,8]
//Output: [10,9]
//Explanation: The subsequences [10,9] and [10,8] are minimal such that the sum of their elements is strictly greater than the sum of elements not included, however, the subsequence [10,9] has the maximum total sum of its elements.

minSubsequence(nums)


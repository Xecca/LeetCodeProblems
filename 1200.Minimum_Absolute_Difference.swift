//1200. Minimum Absolute Difference
//Сomplexity: Easy
//https://leetcode.com/problems/minimum-absolute-difference/
//----------------------------------------------------
//Runtime: 748 ms, faster than 95.59% of Swift online submissions for Minimum Absolute Difference.
//Memory Usage: 25.8 MB, less than 66.67% of Swift online submissions for Minimum Absolute Difference.
//----------------------------------------------------
//Given an array of distinct integers arr, find all pairs of elements with the minimum absolute difference of any two elements.
//
//Return a list of pairs in ascending order(with respect to pairs), each pair [a, b] follows
//
//a, b are from arr
//a < b
//b - a equals to the minimum absolute difference of any two elements in arr
//----------------------------------------------------

func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
    var minDiff = [[Int]]()
    var minDiffValue = 0
    var i = 0
    var sortArr = arr.sorted()
    let length = sortArr.count - 1
    
    minDiffValue =  sortArr[i + 1] - sortArr[i]
    i += 1
    while i < length {
        let diffVal = sortArr[i + 1] - sortArr[i]
        if diffVal < minDiffValue {
            minDiffValue = diffVal
        }
        i += 1
    }
    i = 0
    
    while i < length {
        let diffVal = sortArr[i + 1] - sortArr[i]
        if diffVal == minDiffValue {
            minDiff.append([sortArr[i], sortArr[i + 1]])
        }
        i += 1
    }
    
    print(minDiffValue)
    
    return minDiff
}

//Input:
let arr = [3,8,-10,23,19,-4,-14,27]
//Output: [[-14,-10],[19,23],[23,27]]

minimumAbsDifference(arr)


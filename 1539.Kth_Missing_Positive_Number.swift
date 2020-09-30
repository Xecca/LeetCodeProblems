// Solved by Xecca

//1539. Kth Missing Positive Number
//Сomplexity: Easy
//https://leetcode.com/problems/kth-missing-positive-number/

//----------------------------------------------------
//Runtime: 24 ms, faster than 97.85% of Swift online submissions for Kth Missing Positive Number.
//Memory Usage: 13.8 MB, less than 100.00% of Swift online submissions for Kth Missing Positive Number.
//----------------------------------------------------

//Given an array arr of positive integers sorted in a strictly increasing order, and an integer k.
//
//Find the kth positive integer that is missing from this array.

//----------------------------------------------------

func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
    var kthArr = [Int : Int]()
    var findedMissNum = [Int]()
    var j = 1
    
    for num in arr {
        kthArr.updateValue(1, forKey: num)
    }
    
    while j <= arr.count + k {
        if kthArr[j] != nil {
            j += 1
        } else {
            findedMissNum.append(j)
            j += 1
        }
    }
    print(kthArr)
    print(findedMissNum)
    
    return findedMissNum[k - 1]
}

//Input:
//let arr = [1,2,3,4], k = 2
//Output: 6
//Explanation: The missing positive integers are [1,5,6,8,9,10,12,13,...]. The 5th missing positive integer is 9.
//Input:
let arr = [2,3,4,7,11], k = 5
//Output: 9

findKthPositive(arr, k)


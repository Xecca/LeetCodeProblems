// Solved by Xecca

//1013. Partition Array Into Three Parts With Equal Sum
//Сomplexity: Easy
//https://leetcode.com/problems/partition-array-into-three-parts-with-equal-sum/

//----------------------------------------------------
//Runtime: 380 ms, faster than 92.00% of Swift online submissions for Partition Array Into Three Parts With Equal Sum.
//Memory Usage: 16.1 MB, less than 92.00% of Swift online submissions for Partition Array Into Three Parts With Equal Sum.
//----------------------------------------------------

//Given an array A of integers, return true if and only if we can partition the array into three non-empty parts with equal sums.
//
//Formally, we can partition the array if we can find indexes i+1 < j with (A[0] + A[1] + ... + A[i] == A[i+1] + A[i+2] + ... + A[j-1] == A[j] + A[j-1] + ... + A[A.length - 1])

//----------------------------------------------------

func canThreePartsEqualSum(_ A: [Int]) -> Bool {
    var sum = 0
    var countParts = 0
    var tempSum = 0

    for num in A {
        sum += num
    }
    
    if sum % 3 == 0 {
        let devider = sum / 3

        for num in A {
            tempSum += num
            if tempSum == devider {
                countParts += 1
                tempSum = 0
            }
        }
        if countParts < 3 {
            return false
        }
    } else {
        return false
    }

    return true
}

//Input:
let A = [0,2,1,-6,6,-7,9,1,2,0,1]
//Output: true
//Explanation: 0 + 2 + 1 = -6 + 6 - 7 + 9 + 1 = 2 + 0 + 1

canThreePartsEqualSum(A)


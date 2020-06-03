//905. Sort Array By Parity
//https://leetcode.com/problems/sort-array-by-parity
//Runtime: 72 ms, faster than 83.27% of Swift online submissions for Sort Array By Parity.
//Memory Usage: 21.5 MB, less than 25.00% of Swift online submissions for Sort Array By Parity.
//----------------------------------------------------
//Given an array A of non-negative integers, return an array consisting of all the even elements of A, followed by all the odd elements of A.
//
//You may return any answer array that satisfies this condition.
//----------------------------------------------------

func sortArrayByParity(_ A: [Int]) -> [Int] {
    var newArr = [Int]()
    var i = 0

    while i < A.count {
        if A[i] % 2 != 0 {
            newArr.append(A[i])
        } else {
            newArr.insert(A[i], at: 0)
        }
        i += 1
    }

    return newArr
}

let a = [3,1,2,4]
//Input: [3,1,2,4]
//Output: [2,4,3,1]
//The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

sortArrayByParity(a)


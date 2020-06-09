//922. Sort Array By Parity II
//https://leetcode.com/problems/sort-array-by-parity-ii/
//----------------------------------------------------
//Runtime: 236 ms, faster than 31.87% of Swift online submissions for Sort Array By Parity II.
//Memory Usage: 21.7 MB, less than 81.61% of Swift online submissions for Sort Array By Parity II.
//----------------------------------------------------
//Given an array A of non-negative integers, half of the integers in A are odd, and half of the integers are even.
//
//Sort the array so that whenever A[i] is odd, i is odd; and whenever A[i] is even, i is even.
//
//You may return any answer array that satisfies this condition.
//----------------------------------------------------

func sortArrayByParityII(_ A: [Int]) -> [Int] {
    var oddNums = [Int]()
    var evenNums = [Int]()
    var i = 0
    var j = 0
    let length = A.count
    var finalArr = [Int](0...length - 1)
    
    while i < length {
        if A[i] % 2 == 0 {
            evenNums.append(A[i])
        } else {
            oddNums.append(A[i])
        }
        i += 1
    }
    i = 0
    while i < length {
        finalArr[i] = evenNums[j]
        finalArr[i + 1] = oddNums[j]
        i += 2
        j += 1
    }
    
    return finalArr
}

//Input:
let arr = [4,2,5,7]
//Output: [4,5,2,7]
//Explanation: [4,7,2,5], [2,5,4,7], [2,7,4,5] would also have been accepted.

sortArrayByParityII(arr)


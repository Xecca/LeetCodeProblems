//977. Squares of a Sorted Array
//https://leetcode.com/problems/squares-of-a-sorted-array/
//Runtime: 392 ms, faster than 59.26% of Swift online submissions for Squares of a Sorted Array.
//Memory Usage: 22.3 MB, less than 91.49% of Swift online submissions for Squares of a Sorted Array.
//----------------------------------------------------
//Given an array of integers A sorted in non-decreasing order, return an array of the squares of each number, also in sorted non-decreasing order.
//----------------------------------------------------

func sortedSquares(_ A: [Int]) -> [Int] {
    var newArr = A
    var i = 0
    let length = A.count - 1

    while newArr[i] < 0 && i < length {
        newArr[i] *= -1
        i += 1
    }

    return makeSquareArray(newArr.sorted())
}

func makeSquareArray(_ arr: [Int]) -> [Int] {
    var newArr = arr
    var i = 0
    let length = arr.count

    while i < length {
        newArr[i] = newArr[i] * newArr[i]
        i += 1
    }

    return newArr
}


//Input:
let a = [-4,-1,0,3,10]
//Output: [0,1,9,16,100]

sortedSquares(a)


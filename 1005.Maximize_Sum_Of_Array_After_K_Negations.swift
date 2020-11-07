// Solved by Xecca

//1005. Maximize Sum Of Array After K Negations
//Сomplexity: Easy
//https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/

//----------------------------------------------------
//Runtime: 36 ms, faster than 86.67% of Swift online submissions for Maximize Sum Of Array After K Negations.
//Memory Usage: 14.1 MB, less than 6.67% of Swift online submissions for Maximize Sum Of Array After K Negations.
//----------------------------------------------------

//Given an array A of integers, we must modify the array in the following way: we choose an i and replace A[i] with -A[i], and we repeat this process K times in total.  (We may choose the same index i multiple times.)
//
//Return the largest possible sum of the array after modifying it in this way.

//Note:
//
//1 <= A.length <= 10000
//1 <= K <= 10000
//-100 <= A[i] <= 100

//----------------------------------------------------

func largestSumAfterKNegations(_ A: [Int], _ K: Int) -> Int {
    var n = K
    let newA = A
    var sortedA = newA.sorted()
    var i = 0
    let length = newA.count
    
    while n > 0 && i < length {
        if sortedA[i] < 0 {
            sortedA[i] *= -1
        } else {
            if i > 0 && sortedA[i - 1] > sortedA[i] {
                sortedA[i] *= -1
            } else if i > 0 && sortedA[i] > sortedA[i - 1] {
                sortedA[i - 1] *= -1
                i -= 1
            } else if i >= 0 && sortedA[i] > 0 {
                sortedA[i] *= -1
            } else {
                break
            }
        }
        n -= 1
        i += 1
    }
    
    return sortedA.reduce(0, +)
}

//Example 1:
//
//Input:
//let A = [4,2,3], K = 1
//Output: 5
//let out = 5
//Explanation: Choose indices (1,) and A becomes [4,-2,3].
//Example 2:
//
//Input:
//let A = [3,-1,0,2], K = 3
//Output: 6
//let out = 6
//Explanation: Choose indices (1, 2, 2) and A becomes [3,1,0,2].
//Example 3:
//
//Input:
//let A = [2,-3,-1,5,-4], K = 2
//Output: 13
//let out = 13
//Explanation: Choose indices (1, 4) and A becomes [2,3,-1,5,4].
//let A = [5,6,9,-3,3], K = 2
//Output: 20

//largestSumAfterKNegations(A, K)

    //Test Cases:
if largestSumAfterKNegations([4,2,3], 1) == 5 { print("Correct!") } else { print("Error! Expected: 5") }
if largestSumAfterKNegations([3,-1,0,2], 3) == 6 { print("Correct!") } else { print("Error! Expected: 6") }
if largestSumAfterKNegations([2,-3,-1,5,-4], 2) == 13 { print("Correct!") } else { print("Error! Expected: 13") }
if largestSumAfterKNegations([5,6,9,-3,3], 2) == 20 { print("Correct!") } else { print("Error! Expected: 20") }
if largestSumAfterKNegations([-2,9,9,8,4], 5) == 32 { print("Correct!") } else { print("Error! Expected: 32") }



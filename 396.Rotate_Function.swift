//
//  LeetCodeProblems
//
//  Created by Xecca

//396. Rotate Function
//Difficult: Medium
//https://leetcode.com/problems/surface-area-of-3d-shapes/

//Runtime: 44 ms, faster than 100.00% of Swift online submissions for Rotate Function.
//Memory Usage: 14.5 MB, less than 100.00% of Swift online submissions for Rotate Function.

//
//Given an array of integers A and let n to be its length.
//
//Assume Bk to be an array obtained by rotating the array A k positions clock-wise, we define a "rotation function" F on A as follow:
//
//F(k) = 0 * Bk[0] + 1 * Bk[1] + ... + (n-1) * Bk[n-1].
//
//Calculate the maximum value of F(0), F(1), ..., F(n-1).
//
//Note:
//n is guaranteed to be less than 105.
//

func maxRotateFunction(_ A: [Int]) -> Int {

    if A.count == 0 {
        return 0
    }
    
    var sum = 0
    var result = 0
    var maxValue = -2147483648
    var newValue = 0
    
    for i in 0...A.count - 1 {
        sum += A[i]
        result += A[i] * i
    }
    
    maxValue = result
    for i in 1...A.count - 1 {
        newValue = result + (A[i - 1] * (A.count - 1)) - (sum - A[i - 1])
        result = newValue
        if newValue > maxValue {
            maxValue = newValue
        }
    }
   
    return maxValue
}

//Example:
//A = [4, 3, 2, 6]
//
//F(0) = (0 * 4) + (1 * 3) + (2 * 2) + (3 * 6) = 0 + 3 + 4 + 18 = 25
//F(1) = (0 * 6) + (1 * 4) + (2 * 3) + (3 * 2) = 0 + 4 + 6 + 6 = 16
//F(2) = (0 * 2) + (1 * 6) + (2 * 4) + (3 * 3) = 0 + 6 + 8 + 9 = 23
//F(3) = (0 * 3) + (1 * 2) + (2 * 6) + (3 * 4) = 0 + 2 + 12 + 12 = 26
//
//So the maximum value of F(0), F(1), F(2), F(3) is F(3) = 26.

//Test cases:

if maxRotateFunction([4, 3, 2, 6]) == 26 { print("Correct!") } else { print("Error!") }


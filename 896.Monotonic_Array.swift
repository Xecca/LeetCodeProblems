//
//  LeetCodeProblems
//
//  Created by Xecca

//896. Monotonic Array
//Difficult: Easy
//https://leetcode.com/problems/monotonic-array/

//Runtime: 476 ms, faster than 98.48% of Swift online submissions for Monotonic Array.
//Memory Usage: 15.9 MB, less than 28.79% of Swift online submissions for Monotonic Array.

//
//An array is monotonic if it is either monotone increasing or monotone decreasing.
//
//An array A is monotone increasing if for all i <= j, A[i] <= A[j].  An array A is monotone decreasing if for all i <= j, A[i] >= A[j].
//
//Return true if and only if the given array A is monotonic.
//

func isMonotonic(_ A: [Int]) -> Bool {
    var i = 0
    var j = 1
    var monotone = false
    
    while j < A.count {
        if A[i] <= A[j] {
            monotone = true
        } else {
            monotone = false
            break
        }
        i += 1
        j += 1
    }
    if monotone == true {
        return true
    }
    i = 0
    j = 1
    while j < A.count {
        if A[i] >= A[j] {
            monotone = true
        } else {
            monotone = false
            return false
        }
        i += 1
        j += 1
    }
    
    return true
}

//Example 1:
//Input: [1,2,2,3]
//Output: true
//Example 2:
//Input: [6,5,4,4]
//Output: true
//Example 3:
//Input: [1,3,2]
//Output: false
//Example 4:
//Input: [1,2,4,5]
//Output: true
//Example 5:
//Input: [1,1,1]
//Output: true

//Test cases:

if isMonotonic([1,2,2,3]) == true { print("Correct!") } else { print("Error!") }
if isMonotonic([6,5,4,4]) == true { print("Correct!") } else { print("Error!") }
if isMonotonic([1,3,2]) == false { print("Correct!") } else { print("Error!") }
if isMonotonic([1,2,4,5]) == true { print("Correct!") } else { print("Error!") }
if isMonotonic([1,1,1]) == true { print("Correct!") } else { print("Error!") }


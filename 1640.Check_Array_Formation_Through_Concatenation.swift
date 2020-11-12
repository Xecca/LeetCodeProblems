// Solved by Xecca

//1640. Check Array Formation Through Concatenation
//Сomplexity: Easy
//https://leetcode.com/problems/check-array-formation-through-concatenation/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for XOR Operation in an Array.
//Memory Usage: 13.5 MB, less than 11.43% of Swift online submissions for XOR Operation in an Array.
//----------------------------------------------------

//You are given an array of distinct integers arr and an array of integer arrays pieces, where the integers in pieces are distinct. Your goal is to form arr by concatenating the arrays in pieces in any order. However, you are not allowed to reorder the integers in each array pieces[i].
//
//Return true if it is possible to form the array arr from pieces. Otherwise, return false.

//----------------------------------------------------

//[2,82,79,95,28], [[2],[82],[28],[79,95]]

func canFormArray(_ arr: [Int], _ pieces: [[Int]]) -> Bool {
    var i = 0
    var j = 0
    var match = 0
    
    while i < arr.count && j < pieces.count {
        while j < pieces.count {
            if i < arr.count && arr[i] == pieces[j][0] {
                for num in pieces[j] {
                    if arr[i] == num {
                        i += 1
                        match += 1
                    } else {
                        return false
                    }
                }
                j = 0
            } else {
                j += 1
            }
        }
    }
    
    if match != arr.count {
        return false
    }
    
    return true
}

//Example 2:
//
//Input: arr = [15,88], pieces = [[88],[15]]
//Output: true
//Explanation: Concatenate [15] then [88]
//Example 3:
//
//Input: arr = [49,18,16], pieces = [[16,18,49]]
//Output: false
//Explanation: Even though the numbers match, we cannot reorder pieces[0].

//Test cases:
//
if canFormArray([85], [[85]]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if canFormArray([15,88], [[88],[15]]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if canFormArray([49,18,16], [[16,18,49]]) == false { print("Correct!") } else { print("Error! Expected: \(false)") }
if canFormArray([91,4,64,78], [[78],[4,64],[91]]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if canFormArray([2,82,79,95,28], [[2],[82],[28],[79,95]]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }
if canFormArray([1,3,5,7], [[2,4,6,8]]) == false { print("Correct!") } else { print("Error! Expected: \(false)") }
if canFormArray([1,2,3], [[2],[1,3]]) == false { print("Correct!") } else { print("Error! Expected: \(false)") }




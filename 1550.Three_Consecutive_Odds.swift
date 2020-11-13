// Solved by Xecca

//1550. Three Consecutive Odds
//Сomplexity: Easy
//https://leetcode.com/problems/three-consecutive-odds/

//----------------------------------------------------
//Runtime: 64 ms, faster than 100.00% of Swift online submissions for Mean of Array After Removing Some Elements.
//Memory Usage: 14.7 MB, less than 48.89% of Swift online submissions for Mean of Array After Removing Some Elements.
//----------------------------------------------------

//Given an integer array arr, return true if there are three consecutive odd numbers in the array. Otherwise, return false.
//
//Constraints:
//
//1 <= arr.length <= 1000
//1 <= arr[i] <= 1000

//----------------------------------------------------

func threeConsecutiveOdds(_ arr: [Int]) -> Bool {
    var countCons = 0
    
    for num in arr {
        if num % 2 != 0 {
            countCons += 1
            if countCons == 3 {
                return true
            }
        } else {
            countCons = 0
        }
        
    }
         
    return false
}

//Example 1:
//Input: arr = [2,6,4,1]
//Output: false
//Explanation: There are no three consecutive odds.
//Example 2:
//Input: arr = [1,2,34,3,4,5,7,23,12]
//Output: true
//Explanation: [5,7,23] are three consecutive odds.

//Test cases:
//
if threeConsecutiveOdds([2,6,4,1]) == false { print("Correct!") } else { print("Error! Expected: \(false)") }
if threeConsecutiveOdds([1,2,34,3,4,5,7,23,12]) == true { print("Correct!") } else { print("Error! Expected: \(true)") }


// Solved by Xecca

//1523. Count Odd Numbers in an Interval Range
//Difficult: Easy
//https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Count Odd Numbers in an Interval Range.
//Memory Usage: 14 MB, less than 33.33% of Swift online submissions for Count Odd Numbers in an Interval Range.

//

//Given two non-negative integers low and high. Return the count of odd numbers between low and high (inclusive).

//Constraints:
//
//0 <= low <= high <= 10^9

//

func countOdds(_ low: Int, _ high: Int) -> Int {
    
    var count = 0
    
    if low % 2 != 0 && high % 2 != 0 {
        count -= 1
    }
    if low % 2 != 0 {
        count += 1
    }
    if high % 2 != 0 {
        count += 1
    }
    
    return (count  + ((high - low) / 2))
}

//Example 1:
//
//Input: low = 3, high = 7
//Output: 3
//Explanation: The odd numbers between 3 and 7 are [3,5,7].
//Example 2:
//
//Input: low = 8, high = 10
//Output: 1
//Explanation: The odd numbers between 8 and 10 are [9].

//Test cases:

if countOdds(3, 7) == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }
if countOdds(8, 10) == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }



// Solved by Xecca

import Foundation

//2413. Smallest Even Multiple
//Difficult: Easy
//https://leetcode.com/problems/smallest-even-multiple/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Smallest Even Multiple.
//Memory Usage: 13.5 MB, less than 64.83% of Swift online submissions for Smallest Even Multiple.

//

//Given a positive integer n, return the smallest positive integer that is a multiple of both 2 and n.

//

//Constraints:
//
//The number of nodes in the list is in the range [0, 300].
//-100 <= Node.val <= 100
//The list is guaranteed to be sorted in ascending order.

//

func smallestEvenMultiple(_ n: Int) -> Int {
    var num = n
    
    while true {
        if num % 2 == 0 && num % n == 0 {
            return num
        }
        num += 1
    }
    
    return num
}

//Example 1:
//
//Input: n = 5
//Output: 10
//Explanation: The smallest multiple of both 5 and 2 is 10.
//Example 2:
//
//Input: n = 6
//Output: 6
//Explanation: The smallest multiple of both 6 and 2 is 6. Note that a number is a multiple of itself.

//Test cases:

let input = 5
let answer = 10

if smallestEvenMultiple(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }




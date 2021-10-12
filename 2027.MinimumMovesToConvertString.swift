// Solved by Xecca

//2027. Minimum Moves to Convert String
//Difficult: Easy
//https://leetcode.com/problems/minimum-moves-to-convert-string/

//Runtime: 4 ms, faster than 84.38% of Swift online submissions for Minimum Moves to Convert String.
//Memory Usage: 13.7 MB, less than 100.00% of Swift online submissions for Minimum Moves to Convert String.

//

//You are given a string s consisting of n characters which are either 'X' or 'O'.
//
//A move is defined as selecting three consecutive characters of s and converting them to 'O'. Note that if a move is applied to the character 'O', it will stay the same.
//
//Return the minimum number of moves required so that all the characters of s are converted to 'O'.
////
//Constraints:
//
//    3 <= s.length <= 1000
//    s[i] is either 'X' or 'O'.

//

func minimumMoves(_ s: String) -> Int {
    var countOfX = 0
    var i = 0
    let arr = Array(s)
    
    while i < arr.count {
        if arr[i] == "X" {
            countOfX += 1
            i += 3
        } else {
            i += 1
        }
    }
    
    return countOfX
}

//

//Example 1:
//
//Input: s = "XXX"
//Output: 1
//Explanation: XXX -> OOO
//We select all the 3 characters and convert them in one move.
//Example 2:
//
//Input: s = "XXOX"
//Output: 2
//Explanation: XXOX -> OOOX -> OOOO
//We select the first 3 characters in the first move, and convert them to 'O'.
//Then we select the last 3 characters and convert them so that the final string contains all 'O's.
//Example 3:
//
//Input: s = "OOOO"
//Output: 0
//Explanation: There are no 'X's in s to convert.

//Test cases:

if minimumMoves("XXOX") == 2 { print("Correct!") } else { print("Error! Expexted: \(2)") }


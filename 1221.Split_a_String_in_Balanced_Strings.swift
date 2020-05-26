//1221. Split a String in Balanced Strings
//hhttps://leetcode.com/problems/to-lower-case/
//Runtime: 4 ms, faster than 95.65% of Swift online submissions for Split a String in Balanced Strings.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Split a String in Balanced Strings.
//----------------------------------------------------Balanced strings are those who have equal quantity of 'L' and 'R' characters.
//
//Given a balanced string s split it in the maximum amount of balanced strings.
//
//Return the maximum amount of splitted balanced strings.
//----------------------------------------------------

func balancedStringSplit(_ s: String) -> Int {
    var countL = 0
    var countR = 0
    var lastMax = 0
    
    for letter in s {
        if (letter == Character("L")) {
            countL += 1
        } else {
            countR += 1
        }
        if countL == countR {
            lastMax += 1
        }
    }
    
    return lastMax
}

//Input:
let s = "RLRRLLRLRL"
//Output: 4
//Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.

balancedStringSplit(s)




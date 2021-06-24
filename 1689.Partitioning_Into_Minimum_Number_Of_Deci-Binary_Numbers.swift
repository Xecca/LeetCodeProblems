// Solved by Xecca

//1689. Partitioning Into Minimum Number Of Deci-Binary Numbers
//Difficult: Medium
//https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/

//Runtime: 132 ms, faster than 62.86% of Swift online submissions for Partitioning Into Minimum Number Of Deci-Binary Numbers.
//Memory Usage: 14.1 MB, less than 98.57% of Swift online submissions for Partitioning Into Minimum Number Of Deci-Binary Numbers.

//

//A decimal number is called deci-binary if each of its digits is either 0 or 1 without any leading zeros. For example, 101 and 1100 are deci-binary, while 112 and 3001 are not.
//
//Given a string n that represents a positive decimal integer, return the minimum number of positive deci-binary numbers needed so that they sum up to n.

//Constraints:
//
//1 <= n.length <= 105
//n consists of only digits.
//n does not contain any leading zeros and represents a positive integer.

//

func minPartitions(_ n: String) -> Int {
        var maxNum = 0
        
        for num in n {
            if (num.asciiValue ?? 0) - 48 == 9 {
                return 9
            } else {
                maxNum = max(maxNum, (Int(num.asciiValue ?? 0) - 48))
            }
        }
        
        // for num in n {
        //     switch num {
        //         case "1":
        //             currNum = 1
        //         case "2":
        //             currNum = 2
        //         case "3":
        //             currNum = 3
        //         case "4":
        //             currNum = 4
        //         case "5":
        //             currNum = 5
        //         case "6":
        //             currNum = 6
        //         case "7":
        //             currNum = 7
        //         case "8":
        //             currNum = 8
        //         case "9":
        //             currNum = 9
        //         default:
        //             currNum = 0
        //     }
        //     if currNum == 9 {
        //         return 9
        //     } else {
        //         maxNum = max(maxNum, currNum)
        //     }
        // }
        
        return maxNum
    }

//Example 1:
//
//Input: n = "32"
//Output: 3
//Explanation: 10 + 11 + 11 = 32
//Example 2:
//
//Input: n = "82734"
//Output: 8
//Example 3:
//
//Input: n = "27346209830709182346"
//Output: 9

//Test cases:

if minPartitions("82734") == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }


//1021. Remove Outermost Parentheses
//https://leetcode.com/problems/count-negative-numbers-in-a-sorted-matrix/
//Runtime: 12 ms, faster than 98.89% of Swift online submissions for Remove Outermost Parentheses.
//Memory Usage: 21 MB, less than 33.33% of Swift online submissions for Remove Outermost Parentheses.
//----------------------------------------------------
//A valid parentheses string is either empty (""), "(" + A + ")", or A + B, where A and B are valid parentheses strings, and + represents string concatenation.  For example, "", "()", "(())()", and "(()(()))" are all valid parentheses strings.
//
//A valid parentheses string S is primitive if it is nonempty, and there does not exist a way to split it into S = A+B, with A and B nonempty valid parentheses strings.
//
//Given a valid parentheses string S, consider its primitive decomposition: S = P_1 + P_2 + ... + P_k, where P_i are primitive valid parentheses strings.
//
//Return S after removing the outermost parentheses of every primitive string in the primitive decomposition of S.
//----------------------------------------------------

func removeOuterParentheses(_ S: String) -> String {
    var finalStr = ""
    var tempSum = 0
    
    for c in S {
        if c == "(" {
            tempSum += 1
            if tempSum != 1 {
                finalStr.append(c)
            }
        }
        else {
            tempSum -= 1
            if tempSum != 0 {
                finalStr.append(c)
            }
        }
    }
    return finalStr
}

//Input:
let str = "(()())(())(()(()))"
//Output: "()()()()(())"
//Explanation:
//The input string is "(()())(())(()(()))", with primitive decomposition "(()())" + "(())" + "(()(()))".
//After removing outer parentheses of each part, this is "()()" + "()" + "()(())" = "()()()()(())".

removeOuterParentheses(str)


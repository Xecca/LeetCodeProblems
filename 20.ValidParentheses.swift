// Solved by Xecca

import Foundation

//20. Valid Parentheses
//Difficult: Easy
//https://leetcode.com/problems/valid-parentheses/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Valid Parentheses.
//Memory Usage: 14.1 MB, less than 63.81% of Swift online submissions for Valid Parentheses.
    
//

//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//
//Constraints:
//
//1 <= s.length <= 10^4
//s consists of parentheses only '()[]{}'.

//

func isValid(_ s: String) -> Bool {
    let dict: [Character: Character] = ["(": ")",
                                        "{": "}",
                                        "[": "]"]
    var stack: [Character] = []
    
    for symbol in s {
        if dict.keys.contains(symbol) {
            stack.append(symbol)
        } else if (dict.values.contains(symbol)) {
            if stack.isEmpty {
                return false
            }
            let lastBracket = stack.count - 1
            let openBracket = stack[lastBracket]
            stack.remove(at: lastBracket)
            
            if dict[openBracket] != symbol {
                return false
            }
        } else {
            return true
        }
    }
    
    return stack.isEmpty
}

//Example 1:
//
//Input: s = "()"
//Output: true
//Example 2:
//
//Input: s = "()[]{}"
//Output: true
//Example 3:
//
//Input: s = "(]"
//Output: false
//Example 4:
//
//Input: s = "([)]"
//Output: false
//Example 5:
//
//Input: s = "{[]}"
//Output: true

//Test cases:

let input = "()[]{}"
let input2 = "([)]"
let answer = true
let answer2 = false

if isValid(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }
if isValid(input2) == answer2 { print("Correct!") } else { print("Error! Expexted: \(answer2)") }


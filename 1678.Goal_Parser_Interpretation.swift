// Solved by Xecca

//1678. Goal Parser Interpretation
//Difficult: Easy
//https://leetcode.com/problems/goal-parser-interpretation/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Goal Parser Interpretation.
//Memory Usage: 14.3 MB, less than 64.71% of Swift online submissions for Goal Parser Interpretation.

//

//You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.
//
//Given the string command, return the Goal Parser's interpretation of command.

//Constraints:
//
//1 <= command.length <= 100
//command consists of "G", "()", and/or "(al)" in some order.

//

func interpret(_ command: String) -> String {
    var ans = ""
    var i = 0
    
    while i < command.count - 1 {
        if command[String.Index(utf16Offset: i, in: command)] == "G" {
            ans.append("G")
            i += 1
        } else if command[String.Index(utf16Offset: (i + 1), in: command)] == "a" {
            ans.append("al")
            i += 4
        } else {
            ans.append("o")
            i += 2
        }
    }

    return ans
}

//Example 1:
//
//Input: command = "G()(al)"
//Output: "Goal"
//Explanation: The Goal Parser interprets the command as follows:
//G -> G
//() -> o
//(al) -> al
//The final concatenated result is "Goal".
//Example 2:
//
//Input: command = "G()()()()(al)"
//Output: "Gooooal"
//Example 3:
//
//Input: command = "(al)G(al)()()G"
//Output: "alGalooG"

//Test cases:

if interpret("G()(al)") == "Goal" { print("Correct!") } else { print("Error! Expected: \("Goal")") }


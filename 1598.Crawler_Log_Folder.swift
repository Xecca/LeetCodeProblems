// Solved by Xecca

//1598. Crawler Log Folder
//Difficult: Easy
//https://leetcode.com/problems/crawler-log-folder/

//Runtime: 12 ms, faster than 100.00% of Swift online submissions for Crawler Log Folder.
//Memory Usage: 14.4 MB, less than 50.00% of Swift online submissions for Crawler Log Folder.

//
    //The Leetcode file system keeps a log each time some user performs a change folder operation.
    //
    //The operations are described below:
    //
    //"../" : Move to the parent folder of the current folder. (If you are already in the main folder, remain in the same folder).
    //"./" : Remain in the same folder.
    //"x/" : Move to the child folder named x (This folder is guaranteed to always exist).
    //You are given a list of strings logs where logs[i] is the operation performed by the user at the ith step.
    //
    //The file system starts in the main folder, then the operations in logs are performed.
    //
    //Return the minimum number of operations needed to go back to the main folder after the change folder operations.
//

func minOperations(_ logs: [String]) -> Int {
    var count = 0
    
    for folder in logs {
        if folder == "../" && count != 0 {
            count -= 1
        } else if folder == "./" || (folder == "../" && count == 0) {
            continue
        } else {
            count += 1
        }
    }
    
    return count
}

//Example 1:
//Input: logs = ["d1/","d2/","../","d21/","./"]
//Output: 2
//Explanation: Use this change folder operation "../" 2 times and go back to the main folder.
//Example 2:
//Input: logs = ["d1/","d2/","./","d3/","../","d31/"]
//Output: 3
//Example 3:
//Input: logs = ["d1/","../","../","../"]
//Output: 0

//Test cases:

if minOperations(["d1/","d2/","../","d21/","./"]) == 2 { print("Correct!") } else { print("Error! Expected: \("")") }
if minOperations(["d1/","d2/","./","d3/","../","d31/"]) == 3 { print("Correct!") } else { print("Error! Expected: \("")") }
if minOperations(["d1/","../","../","../"]) == 0 { print("Correct!") } else { print("Error! Expected: \("")") }


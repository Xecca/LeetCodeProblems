// Solved by Xecca

//14. Longest Common Prefix
//Difficult: Easy
//https://leetcode.com/problems/longest-common-prefix/

//Runtime: 24 ms, faster than 51.94% of Swift online submissions for Longest Common Prefix.
//Memory Usage: 14.3 MB, less than 68.73% of Swift online submissions for Longest Common Prefix.

//

//Write a function to find the longest common prefix string amongst an array of strings.

//If there is no common prefix, return an empty string "".
//
//Constraints:
//
//1 <= strs.length <= 200
//0 <= strs[i].length <= 200
//strs[i] consists of only lower-case English letters.

//

func longestCommonPrefix(_ strs: [String]) -> String {
    
    var commonPrefix = ""
    var i = 0
    
    while i < strs[0].count {
        let tempPrefix = strs[0].prefix(i + 1)
        for str in strs {
            if tempPrefix != str.prefix(i + 1) {
                return commonPrefix
            }
        }
        commonPrefix = String(tempPrefix)
        i += 1
    }
    
    return commonPrefix
}

//

//Example 1:
//
//Input: strs = ["flower","flow","flight"]
//Output: "fl"
//Example 2:
//
//Input: strs = ["dog","racecar","car"]
//Output: ""
//Explanation: There is no common prefix among the input strings.

//Test cases:

if longestCommonPrefix(["flower","flow","flight"]) == "fl" { print("Correct!") } else { print("Error! Expexted: \("fl")") }


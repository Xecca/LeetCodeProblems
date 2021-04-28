// Solved by Xecca

//830. Positions of Large Groups
//Difficult: Easy
//https://leetcode.com/problems/positions-of-large-groups/

//Runtime: 12 ms, faster than 84.85% of Swift online submissions for Positions of Large Groups.
//Memory Usage: 14.3 MB, less than 72.73% of Swift online submissions for Positions of Large Groups.

//

//In a string s of lowercase letters, these letters form consecutive groups of the same character.
//
//For example, a string like s = "abbxxxxzyy" has the groups "a", "bb", "xxxx", "z", and "yy".
//
//A group is identified by an interval [start, end], where start and end denote the start and end indices (inclusive) of the group. In the above example, "xxxx" has the interval [3,6].
//
//A group is considered large if it has 3 or more characters.
//
//Return the intervals of every large group sorted in increasing order by start index.

//Constraints:
//
//1 <= s.length <= 1000
//s contains lower-case English letters only.

//

func largeGroupPositions(_ s: String) -> [[Int]] {
    var match = 0
    var result: [[Int]] = []
    var mainChar = s[String.Index(utf16Offset: 0, in: s)]
    
    for (i, char) in s.enumerated() {
        if mainChar != char {
            mainChar = char
            if match >= 3 {
                result.append([i - match, i - 1])
            }
            match = 1
        } else {
            match += 1
        }
    }
    if match >= 3 {
        result.append([s.count - match, s.count - 1])
    }

    return result
}

//Example 1:
//
//Input: s = "abbxxxxzzy"
//Output: [[3,6]]
//Explanation: "xxxx" is the only large group with start index 3 and end index 6.
//Example 2:
//
//Input: s = "abc"
//Output: []
//Explanation: We have groups "a", "b", and "c", none of which are large groups.
//Example 3:
//
//Input: s = "abcdddeeeeaabbbcd"
//Output: [[3,5],[6,9],[12,14]]
//Explanation: The large groups are "ddd", "eeee", and "bbb".
//Example 4:
//
//Input: s = "aba"
//Output: []

//Test cases:

if largeGroupPositions("abbxxxxzzy") == [[3,6]] { print("Correct!") } else { print("Error! Expected: \([[3,6]])") }
if largeGroupPositions("abcdddeeeeaabbbcd") == [[3,5],[6,9],[12,14]] { print("Correct!") } else { print("Error! Expected: \([[3,5],[6,9],[12,14]])") }


// Solved by Xecca

//1624. Largest Substring Between Two Equal Characters
//Сomplexity: Easy
//https://leetcode.com/problems/largest-substring-between-two-equal-characters/

//----------------------------------------------------
//Runtime: 4 ms, faster than 96.00% of Swift online submissions for Largest Substring Between Two Equal Characters.
//Memory Usage: 14.4 MB, less than 52.00% of Swift online submissions for Largest Substring Between Two Equal Characters.

//----------------------------------------------------

//Given a string s, return the length of the longest substring between two equal characters, excluding the two characters. If there is no such substring return -1.
//
//A substring is a contiguous sequence of characters within a string.

//----------------------------------------------------

func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
    var maxDistance = -1
    var dict = [Character: Int]()
    
    for (i, char) in s.enumerated() {
        if let lastIndex = dict[char] {
            if i - lastIndex - 1 > maxDistance {
                maxDistance = i - lastIndex - 1
            }
        } else {
            dict[char] = i
        }
    }
    return maxDistance
}

//Example 1:
//Input: s = "aa"
//Output: 0
//Explanation: The optimal substring here is an empty substring between the two 'a's.
//Example 2:
//Input: s = "abca"
//Output: 2
//Explanation: The optimal substring here is "bc".
//Example 3:
//Input: s = "cbzxy"
//Output: -1
//Explanation: There are no characters that appear twice in s.
//Example 4:
//Input: s = "cabbac"
//Output: 4
//Explanation: The optimal substring here is "abba". Other non-optimal substrings include "bb" and "".

//Test cases:

if maxLengthBetweenEqualCharacters("cbzxy") == -1 { print("Correct!") } else { print("Error! Expected: \(-1)") }
if maxLengthBetweenEqualCharacters("cabbac") == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }


// Solved by Xecca

//1876. Substrings of Size Three with Distinct Characters
//Difficult: Easy
//https://leetcode.com/problems/substrings-of-size-three-with-distinct-characters/

//Runtime: 4 ms, faster than 97.14% of Swift online submissions for Substrings of Size Three with Distinct Characters.
//Memory Usage: 14.2 MB, less than 62.86% of Swift online submissions for Substrings of Size Three with Distinct Characters.

//

//A string is good if there are no repeated characters.
//
//Given a string s​​​​​, return the number of good substrings of length three in s​​​​​​.
//
//Note that if there are multiple occurrences of the same substring, every occurrence should be counted.
//
//A substring is a contiguous sequence of characters in a string.
//
//Constraints:
//
//1 <= s.length <= 100
//s​​​​​​ consists of lowercase English letters.

//

func countGoodSubstrings(_ s: String) -> Int {
    let length = s.count - 2
    if length < 1 {
        return 0
    }
    
//vers. 1:
//         var count = 0
//         var i = 0
//         var goodWord: [Character] = ["a", "a", "a"]
    
//         while i < length {
//             goodWord = [s[String.Index(utf16Offset: i, in: s)],  s[String.Index(utf16Offset: i + 1, in: s)], s[String.Index(utf16Offset: i + 2, in: s)]]
//             if Set(goodWord).count == 3 {
//                 count += 1
//             }
//             i += 1
//         }
    
    
//vers. 2:
    var count = 0
    var arr: [Character] = Array(repeating: Character("a"), count: s.count)
    
    for (i, char) in s.enumerated() {
        arr[i] = char
    }
    var i = 0
    while i < length {
        if arr[i] != arr[i + 1] && arr[i + 1] != arr[i + 2] && arr[i] != arr[i + 2] {
            count += 1
        }
        i += 1
    }

    //vers. 3:
//         var i = 0
//         var count = 0
    
//         while i < length {
//             if s[String.Index(utf16Offset: i, in: s)] != s[String.Index(utf16Offset: i + 1, in: s)] && s[String.Index(utf16Offset: i + 1, in: s)] != s[String.Index(utf16Offset: i + 2, in: s)] && s[String.Index(utf16Offset: i, in: s)] != s[String.Index(utf16Offset: i + 2, in: s)] {
//                 count += 1
//             }
//             i += 1
//         }
    
    return count
}

//Example 1:
//
//Input: s = "xyzzaz"
//Output: 1
//Explanation: There are 4 substrings of size 3: "xyz", "yzz", "zza", and "zaz".
//The only good substring of length 3 is "xyz".
//Example 2:
//
//Input: s = "aababcabc"
//Output: 4
//Explanation: There are 7 substrings of size 3: "aab", "aba", "bab", "abc", "bca", "cab", and "abc".
//The good substrings are "abc", "bca", "cab", and "abc".

//Test cases:

if countGoodSubstrings("aababcabc") == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }


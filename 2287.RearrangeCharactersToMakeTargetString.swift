// Solved by Xecca

import Foundation

//2287. Rearrange Characters to Make Target String
//Difficult: Easy
//https://leetcode.com/problems/rearrange-characters-to-make-target-string/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Rearrange Characters to Make Target String.
//Memory Usage: 14.3 MB, less than 55.17% of Swift online submissions for Rearrange Characters to Make Target String.

//

//You are given two 0-indexed strings s and target. You can take some letters from s and rearrange them to form new strings.
//
//Return the maximum number of copies of target that can be formed by taking letters from s and rearranging them.

//

//Constraints:
//
//1 <= s.length <= 100
//1 <= target.length <= 10
//s and target consist of lowercase English letters.

//

func rearrangeCharacters(_ s: String, _ target: String) -> Int {
    var sDict = makeDict(s)
    var copies = 0
    
    while true {
        for char in target {
            let currVal = sDict[char] ?? 0
            
            if currVal > 0  {
                sDict.updateValue(currVal - 1, forKey: char)
            } else {
                return copies
            }
        }
        copies += 1
    }
    
    return copies
}

func makeDict(_ str: String) -> [Character: Int] {
    var dict: [Character: Int] = [:]
    
    for char in str {
        let currVal = dict[char] ?? 0
        dict.updateValue(currVal + 1, forKey: char)
    }
    
    return dict
}

//Example 1:
//
//Input: s = "ilovecodingonleetcode", target = "code"
//Output: 2
//Explanation:
//For the first copy of "code", take the letters at indices 4, 5, 6, and 7.
//For the second copy of "code", take the letters at indices 17, 18, 19, and 20.
//The strings that are formed are "ecod" and "code" which can both be rearranged into "code".
//We can make at most two copies of "code", so we return 2.
//Example 2:
//
//Input: s = "abcba", target = "abc"
//Output: 1
//Explanation:
//We can make one copy of "abc" by taking the letters at indices 0, 1, and 2.
//We can make at most one copy of "abc", so we return 1.
//Note that while there is an extra 'a' and 'b' at indices 3 and 4, we cannot reuse the letter 'c' at index 2, so we cannot make a second copy of "abc".
//Example 3:
//
//Input: s = "abbaccaddaeea", target = "aaaaa"
//Output: 1
//Explanation:
//We can make one copy of "aaaaa" by taking the letters at indices 0, 3, 6, 9, and 12.
//We can make at most one copy of "aaaaa", so we return 1.

//Test cases:

let input = "ilovecodingonleetcode"
let input2 = "code"
let answer = 2

if rearrangeCharacters(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


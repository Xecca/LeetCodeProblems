// Solved by Xecca

import Foundation

//2273. Find Resultant Array After Removing Anagrams
//Difficult: Easy
//https://leetcode.com/problems/find-resultant-array-after-removing-anagrams/

//Runtime: 38 ms, faster than 100.00% of Swift online submissions for Find Resultant Array After Removing Anagrams.
//Memory Usage: 14.4 MB, less than 100.00% of Swift online submissions for Find Resultant Array After Removing Anagrams.

//

//You are given a 0-indexed string array words, where words[i] consists of lowercase English letters.
//
//In one operation, select any index i such that 0 < i < words.length and words[i - 1] and words[i] are anagrams, and delete words[i] from words. Keep performing this operation as long as you can select an index that satisfies the conditions.
//
//Return words after performing all operations. It can be shown that selecting the indices for each operation in any arbitrary order will lead to the same result.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase using all the original letters exactly once. For example, "dacb" is an anagram of "abdc".

//Constraints:
//
//1 <= words.length <= 100
//1 <= words[i].length <= 10
//words[i] consists of lowercase English letters.

//

func removeAnagrams(_ words: [String]) -> [String] {
    var dictArr: [String: [Character: Int]] = [:]
    var wordsArr = words
    
    for word in words {
        
        
        var tempDict: [Character: Int] = [:]
        
        for char in word {
            let currVal = tempDict[char] ?? 0
            
            tempDict.updateValue(currVal + 1, forKey: char)
        }
        
        dictArr.updateValue(tempDict, forKey: word)
    }
    
    var i = 0
    var j = 1
    
    while i < wordsArr.count {
        j = i + 1
        while j < wordsArr.count {
            if dictArr[wordsArr[i]] == dictArr[wordsArr[j]] {
                wordsArr.remove(at: j)
                i -= 1
            }
            break
        }
        i += 1
    }
    
    return wordsArr
}

//Example 1:
//
//Input: words = ["abba","baba","bbaa","cd","cd"]
//Output: ["abba","cd"]
//Explanation:
//One of the ways we can obtain the resultant array is by using the following operations:
//- Since words[2] = "bbaa" and words[1] = "baba" are anagrams, we choose index 2 and delete words[2].
//  Now words = ["abba","baba","cd","cd"].
//- Since words[1] = "baba" and words[0] = "abba" are anagrams, we choose index 1 and delete words[1].
//  Now words = ["abba","cd","cd"].
//- Since words[2] = "cd" and words[1] = "cd" are anagrams, we choose index 2 and delete words[2].
//  Now words = ["abba","cd"].
//We can no longer perform any operations, so ["abba","cd"] is the final answer.
//Example 2:
//
//Input: words = ["a","b","c","d","e"]
//Output: ["a","b","c","d","e"]
//Explanation:
//No two adjacent strings in words are anagrams of each other, so no operations are performed.

//Test cases:

let input = ["abba","baba","bbaa","cd","cd"]
let answer = ["abba","cd"]

if removeAnagrams(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


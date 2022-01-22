// Solved by Xecca

import Foundation

//2114. Maximum Number of Words Found in Sentences
//Difficult: Easy
//https://leetcode.com/problems/maximum-number-of-words-found-in-sentences/

//Runtime: 85 ms, faster than 38.04% of Swift online submissions for Maximum Number of Words Found in Sentences.
//Memory Usage: 14.1 MB, less than 92.64% of Swift online submissions for Maximum Number of Words Found in Sentences.

//

//A sentence is a list of words that are separated by a single space with no leading or trailing spaces.
//
//You are given an array of strings sentences, where each sentences[i] represents a single sentence.
//
//Return the maximum number of words that appear in a single sentence.
//
//Constraints:
//
//1 <= sentences.length <= 100
//1 <= sentences[i].length <= 100
//sentences[i] consists only of lowercase English letters and ' ' only.
//sentences[i] does not have leading or trailing spaces.
//All the words in sentences[i] are separated by a single space.

//
import Foundation
//

func mostWordsFound(_ sentences: [String]) -> Int {
    var maxWordCount = Int.min
    var spaceCount = 0
    
    for sentence in sentences {
        let arr = Array(sentence)
        spaceCount = 0
        for char in arr {
            if char == " " {
                spaceCount += 1
            }
        }
        maxWordCount = max(maxWordCount, spaceCount + 1)
    }
    
    return maxWordCount
}

//Example 1:
//
//Input: sentences = ["alice and bob love leetcode", "i think so too", "this is great thanks very much"]
//Output: 6
//Explanation:
//- The first sentence, "alice and bob love leetcode", has 5 words in total.
//- The second sentence, "i think so too", has 4 words in total.
//- The third sentence, "this is great thanks very much", has 6 words in total.
//Thus, the maximum number of words in a single sentence comes from the third sentence, which has 6 words.
//Example 2:
//
//Input: sentences = ["please wait", "continue to fight", "continue to win"]
//Output: 3
//Explanation: It is possible that multiple sentences contain the same number of words.
//In this example, the second and third sentences (underlined) have the same number of words.

//Test cases:

let input = ["please wait", "continue to fight", "continue to win"]
let answer = 3

if mostWordsFound(input) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


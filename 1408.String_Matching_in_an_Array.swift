//1408. String Matching in an Array
//Сomplexity: Easy
//https://leetcode.com/problems/string-matching-in-an-array/

//----------------------------------------------------
//Runtime: 216 ms, faster than 71.43% of Swift online submissions for Shift 2D Grid.
//Memory Usage: 21.4 MB, less than 100.00% of Swift online submissions for Shift 2D Grid.
//----------------------------------------------------

//Given an array of string words. Return all strings in words which is substring of another word in any order.
//
//String words[i] is substring of words[j], if can be obtained removing some characters to left and/or right side of words[j].

//----------------------------------------------------

func stringMatching(_ words: [String]) -> [String] {
    let wordsLength = words.count
    var i = 0
    var j = 0
    var tempWord = String()
    var matchedWords = [String]()

    while i < wordsLength {
        tempWord = words[i]
        j = 0
        while j < wordsLength {
            if i != j && compareWords(tempWord, words[j]) == true {
                matchedWords.append(tempWord)
            }
            j += 1
        }
        i += 1
    }

    return [String](Set(matchedWords))
}

func compareWords(_ word1: String, _ word2: String) -> Bool {
    if word1.count > word2.count {
        return false
    }
    var countMatching = 0
    var i = 0
    var j = 0
    while i < word1.count {
        while j < word2.count {
            if i < word1.count && word1[String.Index(utf16Offset: i, in: word1)] == word2[String.Index(utf16Offset: j, in: word2)] {
                countMatching += 1
                if countMatching == word1.count {
                    return true
                }
                i += 1
                j += 1
            } else {
                countMatching = 0
                i = 0
                if word1[String.Index(utf16Offset: 0, in: word1)] != word2[String.Index(utf16Offset: j, in: word2)] || j == word2.count - 1 {
                    j += 1
                }
            }
        }
        i += 1
    }
    if countMatching == word1.count {
        return true
    }

    return false
}

//Input:
let words = ["leetcode","et", "code"]
//Output: ["as","hero"]
//Explanation: "as" is substring of "mass" and "hero" is substring of "superhero".
//["hero","as"] is also a valid answer.

stringMatching(words)


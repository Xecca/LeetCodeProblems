//1455. Check If a Word Occurs As a Prefix of Any Word in a Sentence
//Сomplexity: Easy
//https://leetcode.com/problems/check-if-a-word-occurs-as-a-prefix-of-any-word-in-a-sentence/
//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Check If a Word Occurs As a Prefix of Any Word in a Sentence.
//Memory Usage: 20.8 MB, less than 96.97% of Swift online submissions for Check If a Word Occurs As a Prefix of Any Word in a Sentence.
//----------------------------------------------------

//Given a sentence that consists of some words separated by a single space, and a searchWord.
//
//You have to check if searchWord is a prefix of any word in sentence.
//
//Return the index of the word in sentence where searchWord is a prefix of this word (1-indexed).
//
//If searchWord is a prefix of more than one word, return the index of the first word (minimum index). If there is no such word return -1.
//
//A prefix of a string S is any leading contiguous substring of S.

func isPrefixOfWord(_ sentence: String, _ searchWord: String) -> Int {
    let listWords = sentence.split(separator: " ")
    var step = 1
    
    for word in listWords {
        if checkPrefix(String(word), searchWord) == true {
            return step
        }
        step += 1
    }
    
    print(listWords)
    
    return -1
}

func checkPrefix(_ wordForCheck: String, _ searchWord: String) -> Bool {
    var i = 0
    let length = searchWord.count
    let lengthCheckWord = wordForCheck.count
    
    if lengthCheckWord < length {
        return false
    }
    
    while i < length {
        if wordForCheck[String.Index(utf16Offset: i, in: wordForCheck)] != searchWord[String.Index(utf16Offset: i, in: searchWord)] {
            return false
        }
        i += 1
    }
    
    return true
}

//Input:
let sentence = "this problem is an easy problem", searchWord = "pro"
//Output: 2
//Explanation: "pro" is prefix of "problem" which is the 2nd and the 6th word in the sentence, but we return 2 as it's the minimal index.

isPrefixOfWord(sentence, searchWord)




















////-----------------------------------------------------------------------------------------------------
////821. Shortest Distance to a Character
////Сomplexity: Easy
////https://leetcode.com/problems/shortest-distance-to-a-character/
////----------------------------------------------------
////Runtime: 8 ms, faster than 100.00% of Swift online submissions for Available Captures for Rook.
////Memory Usage: 21.1 MB, less than 77.78% of Swift online submissions for Available Captures for Rook.
////----------------------------------------------------
////Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.
////----------------------------------------------------
//
//func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//    let length = S.count
//    var finalMatch = [Int](repeating: Int.max, count: length)
//    finalMatch = findChar(S, C, finalMatch)
//    var i = 0
//
//    while i < length {
//        var diff = [Int]()
//        for ind in finalMatch {
//            diff.append(<#T##newElement: Int##Int#>)
//        }
//    }
//
//
//    print(finalMatch)
//
//    return [0]
//}
//
//func findChar(_ str: String, _ char: Character, _ finalMatch: [Int]) -> [Int] {
//    var i = 0
//    var charPosition = finalMatch
//
//    for letter in str {
//        if letter == char {
//            charPosition[i] = 0
//        }
//        i += 1
//    }
//
//    return charPosition
//}
//
////Input:
//let S = "loveleetcode", C: Character = "e"
////Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
//
//shortestToChar(S, C)


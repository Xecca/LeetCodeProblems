//1160. Find Words That Can Be Formed by Characters
//Сomplexity: Easy
//https://leetcode.com/problems/find-words-that-can-be-formed-by-characters/
//----------------------------------------------------
//Runtime: 296 ms, faster than 58.21% of Swift online submissions for Find Words That Can Be Formed by Characters.
//Memory Usage: 21 MB, less than 96.43% of Swift online submissions for Find Words That Can Be Formed by Characters.
//----------------------------------------------------
//You are given an array of strings words and a string chars.
//
//A string is good if it can be formed by characters from chars (each character can only be used once).
//
//Return the sum of lengths of all good strings in words.
//----------------------------------------------------

func countCharacters(_ words: [String], _ chars: String) -> Int {
    var charsCount = [Int](repeating: 0, count: 26)
    var finalLen = 0
    var len = 0
    var i = 0
    
    for char in chars {
        charsCount[Int(char.asciiValue! - 97)] += 1
    }
    
    for word in words {
        len = 0
        var charsInWord = [Int](repeating: 0, count: 26)
        for char in word {
            charsInWord[Int(char.asciiValue! - 97)] += 1
        }
//        print(charsInWord)
        while i < charsInWord.count {
            if charsInWord[i] <= charsCount[i] {
                len += 1
            } else {
                break
            }
            i += 1
        }
        if len == charsInWord.count {
            finalLen += word.count
        }
        i = 0
    }
//    print(charsCount)
    
    return finalLen
}

//Input:
let words = ["hello","world","leetcode"], chars = "welldonehoneyr"
//Output: 6
//Explanation:
//The strings that can be formed are "cat" and "hat" so the answer is 3 + 3 = 6.

countCharacters(words, chars)


//884. Uncommon Words from Two Sentences
//Сomplexity: Easy
//https://leetcode.com/problems/goat-latin/
//----------------------------------------------------
//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Uncommon Words from Two Sentences.
//Memory Usage: 21.1 MB, less than 88.46% of Swift online submissions for Uncommon Words from Two Sentences.
//----------------------------------------------------

//We are given two sentences A and B.  (A sentence is a string of space separated words.  Each word consists only of lowercase letters.)
//
//A word is uncommon if it appears exactly once in one of the sentences, and does not appear in the other sentence.
//
//Return a list of all uncommon words.
//
//You may return the list in any order.

//----------------------------------------------------

func uncommonFromSentences(_ A: String, _ B: String) -> [String] {
    let newConcatString = (A + " " + B).split(separator: " ")
    var countWords = [String: Int]()
    var finalStr = [String]()
    var count = 0
    
    
    for word in newConcatString {
        countWords.updateValue(0, forKey: String(word))
    }
    
    for word in newConcatString {
        count = countWords[String(word)]!
        countWords.updateValue(count + 1, forKey: String(word))
    }
    
    for word in countWords {
        if word.value == 1 {
            finalStr.append(word.key)
        }
    }
    
    print(countWords)
    
    return finalStr
}

//Input:
let A = "this apple is sweet", B = "this apple is sour"
//Output: ["sweet","sour"]

uncommonFromSentences(A, B)


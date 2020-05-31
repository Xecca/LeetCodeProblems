//804. Unique Morse Code Words
//https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/
//Runtime: 40 ms, faster than 6.98% of Swift online submissions for Unique Morse Code Words.
//Memory Usage: 21.3 MB, less than 50.00% of Swift online submissions for Unique Morse Code Words.
//----------------------------------------------------
//International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows: "a" maps to ".-", "b" maps to "-...", "c" maps to "-.-.", and so on.
//
//For convenience, the full table for the 26 letters of the English alphabet is given below:
//
//[".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
//Now, given a list of words, each word can be written as a concatenation of the Morse code of each letter. For example, "cba" can be written as "-.-..--...", (which is the concatenation "-.-." + "-..." + ".-"). We'll call such a concatenation, the transformation of a word.
//
//Return the number of different transformations among all words we have.
//----------------------------------------------------

func uniqueMorseRepresentations(_ words: [String]) -> Int {
    let morze = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    var transformWordsArr = [String]()
    var i = 0
    let length = words.count
    
    while i < length {
        transformWordsArr.append(transformWord(words[i], morze, alphabet))
        i += 1
    }
    print(transformWordsArr)
    
    return uniqueWordsInArray(transformWordsArr)
}

func uniqueWordsInArray(_ inputArray: [String]) -> Int {
    var i = 0
    var j = 0
    var uniqueArray = inputArray
    
    while i < uniqueArray.count {
        j = i + 1
        while j < uniqueArray.count {
            if stringsCompared(uniqueArray[i], uniqueArray[j]) == true {
                uniqueArray.remove(at: j)
            } else {
                j += 1
            }
        }
        i += 1
    }
    
    return uniqueArray.count
}

func transformWord(_ word: String, _ morze: [String], _ alphabet: [String]) -> String {
    var i = 0
    var j = 0
    let length = word.count
    var newWord = ""
    
    while i < length {
        j = 0
        for letter in alphabet {
            if Character(letter) == word[String.Index(encodedOffset: i)] {
                newWord.append(morze[j])
                break
            }
            j += 1
        }
        i += 1
    }
    print(newWord)
    return newWord
}

func stringsCompared(_ str1: String, _ str2: String) -> Bool {
    var i = 0
    let length = str1.count
    if length != str2.count {
        return false
    }
    
    while i < length {
        if str1[String.Index(encodedOffset: i)] == str2[String.Index(encodedOffset: i)] {
            i += 1
        } else {
            return false
        }
    }

    return true
}

//Example:
//Input:
let words = ["gin", "zen", "gig", "msg"]
//Output: 2
//Explanation:
//The transformation of each word is:
//"gin" -> "--...-."
//"zen" -> "--...-."
//"gig" -> "--...--."
//"msg" -> "--...--."
//
//There are 2 different transformations, "--...-." and "--...--.".

uniqueMorseRepresentations(words)


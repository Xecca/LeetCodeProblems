//824. Goat Latin
//Сomplexity: Easy
//https://leetcode.com/problems/goat-latin/
//----------------------------------------------------
//Runtime: 12 ms, faster than 84.38% of Swift online submissions for Goat Latin.
//Memory Usage: 20.7 MB, less than 96.55% of Swift online submissions for Goat Latin.
//----------------------------------------------------

//A sentence S is given, composed of words separated by spaces. Each word consists of lowercase and uppercase letters only.
//
//We would like to convert the sentence to "Goat Latin" (a made-up language similar to Pig Latin.)
//
//The rules of Goat Latin are as follows:
//
//If a word begins with a vowel (a, e, i, o, or u), append "ma" to the end of the word.
//For example, the word 'apple' becomes 'applema'.
//
//If a word begins with a consonant (i.e. not a vowel), remove the first letter and append it to the end, then add "ma".
//For example, the word "goat" becomes "oatgma".
//
//Add one letter 'a' to the end of each word per its word index in the sentence, starting with 1.
//For example, the first word gets "a" added to the end, the second word gets "aa" added to the end and so on.
//Return the final sentence representing the conversion from S to Goat Latin.

//----------------------------------------------------

func toGoatLatin(_ S: String) -> String {
    var i = 0
    let splitSent = S.split(separator: " ")
    var finalStr = String()
    var tempWord = ""
    let length = splitSent.count
    
    while i < length {
        
        if String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "a" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "A" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "e" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "E" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "i" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "I" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "o" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "O" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "u" || String(splitSent[i][String.Index(utf16Offset: 0, in: splitSent[i])]) == "U" {
            tempWord = String(splitSent[i])
            //            finalStr.insert(contentsOf: splitSent[i], at: String.Index(utf16Offset: 0, in: splitSent[i]))
            
        } else {
            tempWord = swapCharToTheEnd(String(splitSent[i]))
        }
        tempWord = addMa(i + 1, tempWord)
        finalStr.append(tempWord)
        if i != length - 1 {
            finalStr.append(" ")
        }
        i += 1
    }
    
    return finalStr
}

func addMa(_ wordIndex: Int, _ word: String) -> String {
    var i = 0
    var finalWord = word
    
    finalWord.append("ma")
    while i < wordIndex {
        finalWord.append("a")
        i += 1
    }
    
    return finalWord
}

func swapCharToTheEnd(_ word: String) -> String {
    let swap = word[String.Index(utf16Offset: 0, in: word)]
    var finalWord = word
    
    finalWord.remove(at: String.Index(utf16Offset: 0, in: finalWord))
    finalWord.append(swap)
    
    return finalWord
}

//Input:
let sentense = "The quick brown fox jumped over the lazy dog"
//Output: "heTmaa uickqmaaa rownbmaaaa oxfmaaaaa umpedjmaaaaaa overmaaaaaaa hetmaaaaaaaa azylmaaaaaaaaa ogdmaaaaaaaaaa"

toGoatLatin(sentense)


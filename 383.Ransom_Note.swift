// Solved by Xecca

//383. Ransom Note
//Сomplexity: Easy
//https://leetcode.com/problems/ransom-note/

//----------------------------------------------------
//Runtime: 104 ms, faster than 67.69% of Swift online submissions for Ransom Note.
//Memory Usage: 14.5 MB, less than 100.00% of Swift online submissions for Ransom Note.
//----------------------------------------------------

//Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.
//
//Each letter in the magazine string can only be used once in your ransom note.

//----------------------------------------------------

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
//    var dictRansomNote = makeDict(ransomNote)
    var dictMagazine = makeDict(magazine)
    
    for char in ransomNote {
        if dictMagazine[char] != nil && dictMagazine[char] ?? 0 > 0  {
            dictMagazine.updateValue(dictMagazine[char]! - 1, forKey: char)
        } else {
            return false
        }
    }
    
    print(dictMagazine)
    
    return true
}

func makeDict(_ inputString: String) -> [ Character : Int ] {
    var stringInDict = [ Character : Int ]()
    
    for char in inputString {
        if stringInDict[char] == nil {
            stringInDict.updateValue(1, forKey: char)
        } else {
            stringInDict.updateValue((stringInDict[char]! + 1), forKey: char)
        }
    }
    
    return stringInDict
}

//Input: ransomNote = "aa", magazine = "ab"
//Output: false
//Input:
let ransomNote = "ab", magazine = "aaab"
//Output: true

canConstruct(ransomNote, magazine)


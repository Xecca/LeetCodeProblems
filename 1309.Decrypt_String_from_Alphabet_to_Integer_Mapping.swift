//1309. Decrypt String from Alphabet to Integer Mapping
//https://leetcode.com/problems/decrypt-string-from-alphabet-to-integer-mapping/
//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Decrypt String from Alphabet to Integer Mapping.
//Memory Usage: 21.2 MB, less than 100.00% of Swift online submissions for Decrypt String from Alphabet to Integer Mapping.
//----------------------------------------------------
//Given a string s formed by digits ('0' - '9') and '#' . We want to map s to English lowercase characters as follows:
//
//Characters ('a' to 'i') are represented by ('1' to '9') respectively.
//Characters ('j' to 'z') are represented by ('10#' to '26#') respectively.
//Return the string formed after mapping.
//
//It's guaranteed that a unique mapping will always exist.
//----------------------------------------------------

func freqAlphabets(_ s: String) -> String {
    var finalStr = ""
    let strLen = s.count - 1
    var tempVal = 0
    var tempStr = ""
    var i = strLen
    
    while i >= 0 {
        if s[String.Index(encodedOffset: i)] == "#" {
            tempStr = String(s[String.Index(encodedOffset: i - 2)]) + String(s[String.Index(encodedOffset: i - 1)])
            tempVal = Int(tempStr) ?? 0
            finalStr.append(Character(UnicodeScalar(tempVal + 96)!))
            i -= 3
        } else {
            tempStr = String(s[String.Index(encodedOffset: i)])
            tempVal = Int(tempStr) ?? 0
            finalStr.append(Character(UnicodeScalar(tempVal + 96)!))
            i -= 1
        }
        tempStr = ""
        tempVal = 0
    }
    
    return reverseString(finalStr)
}

func reverseString(_ s: String) -> String {
    var newString = ""
    var i = s.count - 1
    
    
    while i >= 0 {
        newString.append(s[String.Index(encodedOffset: i)])
        i -= 1
    }
    
    return newString
}

//Input:
let s = "10#11#12"
//Output: "jkab"
//Explanation: "j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".

freqAlphabets(s)


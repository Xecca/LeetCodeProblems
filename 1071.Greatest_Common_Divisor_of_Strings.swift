// Solved by Xecca

//1071. Greatest Common Divisor of Strings
//Difficult: Easy
//https://leetcode.com/problems/greatest-common-divisor-of-strings/

//Runtime: 404 ms, faster than 21.74% of Swift online submissions for Greatest Common Divisor of Strings.
//Memory Usage: 14 MB, less than 86.96% of Swift online submissions for Greatest Common Divisor of Strings.

//
    //For two strings s and t, we say "t divides s" if and only if s = t + ... + t  (t concatenated with itself 1 or more times)
    //
    //Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
//    1 <= str1.length <= 1000
//    1 <= str2.length <= 1000
//    str1 and str2 consist of English uppercase letters.
//

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    if str1[String.Index(utf16Offset: 0, in: str1)] != str2[String.Index(utf16Offset: 0, in: str2)] {
        return ""
    }

    var devider = ""

    if str1.count > str2.count {
        devider = str2
    } else if str1.count < str2.count {
        devider = str1
    } else {
        if str1 != str2 {
            return ""
        } else {
            return str1
        }
    }

    var i = 0

    while devider.count > 0 {
        if str1.count % devider.count == 0 && str2.count % devider.count == 0 {
            if checkingDevider(str1, devider) == true && checkingDevider(str2, devider) == true {
                return devider
            }
        }
        devider.remove(at: String.Index(utf16Offset: devider.count - 1, in: str1))
        i += 1
    }

    return devider
}

func checkingDevider(_ str: String, _ devider: String) -> Bool {
    var i = 0
    var j = 0

    while i < str.count {
        if j == devider.count {
            j = 0
        }
        if str[String.Index(utf16Offset: i, in: str)] != devider[String.Index(utf16Offset: j, in: devider)] {
            return false
        }
        i += 1
        j += 1
    }
    if j != devider.count {
        return false
    }

    return true
}

//The fastest solution (not mine):

//func gcdOfStrings(_ str1: String, _ str2: String) -> String {
//    if str1 < str2 {
//        return gcdOfStrings(str2, str1)
//    }
//
//    if str2 == str1 {
//        return str1
//    }
//
//    if String(str1.prefix(str2.count)) == str2 {
//        return gcdOfStrings(String(str1.suffix(str1.count - str2.count)), str2)
//    }
//
//    return ""
//}

//Example 1:
//Input: str1 = "ABCABC", str2 = "ABC"
//Output: "ABC"
//Example 2:
//Input: str1 = "ABABAB", str2 = "ABAB"
//Output: "AB"
//Example 3:
//Input: str1 = "LEET", str2 = "CODE"
//Output: ""
//Example 4:
//Input: str1 = "ABCDEF", str2 = "ABC"
//Output: ""

//Test cases:

if gcdOfStrings("ABCABC", "ABC") == "ABC" { print("Correct!") } else { print("Error! Expected: \("ABC")") }
if gcdOfStrings("ABABAB", "ABAB") == "AB" { print("Correct!") } else { print("Error! Expected: \("AB")") }
if gcdOfStrings("LEET", "CODE") == "" { print("Correct!") } else { print("Error! Expected: \("")") }
if gcdOfStrings("ABCDEF", "ABC") == "" { print("Correct!") } else { print("Error! Expected: \("")") }
if gcdOfStrings("ABC", "ABC") == "ABC" { print("Correct!") } else { print("Error! Expected: \("ABC")") }
if gcdOfStrings("TAUXXTAUXXTAUXXTAUXXTAUXX", "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX") == "TAUXX" { print("Correct!") } else { print("Error! Expected: \("TAUXX")") }


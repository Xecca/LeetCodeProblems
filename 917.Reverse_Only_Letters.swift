//
//  LeetCodeProblems
//
//  Created by Xecca

//917. Reverse Only Letters
//Difficult: Easy
//https://leetcode.com/problems/reverse-only-letters/

//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Reverse Only Letters.
//Memory Usage: 14 MB, less than 100.00% of Swift online submissions for Reverse Only Letters.

//
//Given a string S, return the "reversed" string where all characters that are not a letter stay in the same place, and all letters reverse their positions.
//

func reverseOnlyLetters(_ S: String) -> String {
    var i = 0
    var j = S.count - 1
    var rigthPartOfString = ""
    var leftPartOfString = ""

    while i < j {
        while i < j && (S[String.Index(utf16Offset: i, in: S)].asciiValue! < 65 || (S[String.Index(utf16Offset: i, in: S)].asciiValue! > 90 && S[String.Index(utf16Offset: i, in: S)].asciiValue! < 97)) {
            leftPartOfString.append(S[String.Index(utf16Offset: i, in: S)])
            i += 1
        }
        while j > i && (S[String.Index(utf16Offset: j, in: S)].asciiValue! < 65 || (S[String.Index(utf16Offset: j, in: S)].asciiValue! > 90 && S[String.Index(utf16Offset: j, in: S)].asciiValue! < 97)) {
            rigthPartOfString.insert(S[String.Index(utf16Offset: j, in: S)], at: String.Index(utf16Offset: 0, in: S))
            j -= 1
        }
        if ((S[String.Index(utf16Offset: j, in: S)].asciiValue! >= 65 && S[String.Index(utf16Offset: j, in: S)].asciiValue! <= 90) || (S[String.Index(utf16Offset: j, in: S)].asciiValue! >= 97 && S[String.Index(utf16Offset: j, in: S)].asciiValue! <= 122)) && ((S[String.Index(utf16Offset: i, in: S)].asciiValue! >= 65 && S[String.Index(utf16Offset: i, in: S)].asciiValue! <= 90) || (S[String.Index(utf16Offset: i, in: S)].asciiValue! >= 97 && S[String.Index(utf16Offset: i, in: S)].asciiValue! <= 122)) {
            leftPartOfString.append(S[String.Index(utf16Offset: j, in: S)])
            rigthPartOfString.insert(S[String.Index(utf16Offset: i, in: S)], at: String.Index(utf16Offset: 0, in: S))
            i += 1
            j -= 1
        }
    }
    if i == j && (leftPartOfString + rigthPartOfString).count < S.count {
        leftPartOfString.append(S[String.Index(utf16Offset: j, in: S)])
    } else if (i > j || j > i) && (leftPartOfString + rigthPartOfString).count > S.count {
        rigthPartOfString.remove(at: String.Index(utf16Offset: 0, in: rigthPartOfString))
    }

    return leftPartOfString + rigthPartOfString
}

//Example 1:
//Input: "ab-cd"
//Output: "dc-ba"
//Example 2:
//Input: "a-bC-dEf-ghIj"
//Output: "j-Ih-gfE-dCba"
//Example 3:
//Input: "Test1ng-Leet=code-Q!"
//Output: "Qedo1ct-eeLg=ntse-T!"

//Test cases:

if reverseOnlyLetters("ab-cd") == "dc-ba" { print("Correct!") } else { print("Error!") }
if reverseOnlyLetters("a-bC-dEf-ghIj") == "j-Ih-gfE-dCba" { print("Correct!") } else { print("Error!") }
if reverseOnlyLetters("Test1ng-Leet=code-Q!") == "Qedo1ct-eeLg=ntse-T!" { print("Correct!") } else { print("Error!") }



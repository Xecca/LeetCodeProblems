//557. Reverse Words in a String III
//https://leetcode.com/problems/reverse-words-in-a-string-iii/
//Runtime: 180 ms, faster than 80.58% of Swift online submissions for Reverse Words in a String III.
//Memory Usage: 21.9 MB, less than 100.00% of Swift online submissions for Reverse Words in a String III.
//----------------------------------------------------

func reverseWords(_ s: String) -> String {
    let splitLine = s.split(separator: " ")

    if splitLine.count == 0 {
        return ""
    }
    var finalString = ""

    for word in splitLine {
        finalString.append(String(word.reversed()))
        finalString.append(" ")
    }
    finalString.remove(at: finalString.index(before: finalString.endIndex))
    return finalString
}

let str = "Let's take LeetCode contest"

print(reverseWords(str))

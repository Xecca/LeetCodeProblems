//557. Reverse Words in a String III
//https://leetcode.com/problems/reverse-words-in-a-string-iii/
//
//Runtime: 188 ms, faster than 63.86% of Swift online submissions for Reverse Words in a String III.
//Memory Usage: 21.7 MB, less than 86.58% of Swift online submissions for Reverse Words in a String III.
//----------------------------------------------------
//Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
//----------------------------------------------------

func reverseWords(_ s: String) -> String {
    let testStr = s
    var newStr = String()
    
    for word in testStr.split(separator: " ") {
        newStr.append("\(String(word.reversed())) ")
    }
    if newStr.count > 0 {
        newStr.remove(at: String.Index(encodedOffset: newStr.count - 1))
    }
    
    return newStr
}

//Example 1:
//Input:
let str = "Let's take LeetCode contest"
//Output: "s'teL ekat edoCteeL tsetnoc"

reverseWords(str)


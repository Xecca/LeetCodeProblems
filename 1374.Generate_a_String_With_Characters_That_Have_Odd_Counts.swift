//1374. Generate a String With Characters That Have Odd Counts
//https://leetcode.com/problems/generate-a-string-with-characters-that-have-odd-counts/
//Runtime: 8 ms, faster than 96.67% of Swift online submissions for Find N Unique Integers Sum up to Zero.
//Memory Usage: 21.2 MB, less than 100.00% of Swift online submissions for Find N Unique Integers Sum up to Zero.
//----------------------------------------------------
//Given an integer n, return a string with n characters such that each character in such string occurs an odd number of times.
//
//The returned string must contain only lowercase English letters. If there are multiples valid strings, return any of them.
//----------------------------------------------------

func generateTheString(_ n: Int) -> String {
    var i = 0
    var newStr = ""
    
    if n % 2 != 0 {
        while i < n {
            newStr.append("a")
            i += 1
        }
    } else {
        while i < n - 1 {
            newStr.append("b")
            i += 1
        }
        newStr.append("c")
    }
    
    return newStr
}

//Input:
let n = 4
//Output: "pppz"
//Explanation: "pppz" is a valid string since the character 'p' occurs three times and the character 'z' occurs once. Note that there are many other valid strings such as "ohhh" and "love".

generateTheString(n)


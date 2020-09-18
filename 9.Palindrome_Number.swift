//9. Palindrome Number
//Сomplexity: Easy
//https://leetcode.com/problems/palindrome-number/

//----------------------------------------------------
//Runtime: 44 ms, faster than 82.90% of Swift online submissions for Palindrome Number.
//Memory Usage: 21.2 MB, less than 24.72% of Swift online submissions for Palindrome Number.
//----------------------------------------------------

//Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.

//----------------------------------------------------

func isPalindrome(_ x: Int) -> Bool {
    let num = String(x)
    let length = num.count
    var i = 0
    var j = length - 1
    let middle = length / 2
    
    while i < middle {
        if num[String.Index(utf16Offset: i, in: num)] != num[String.Index(utf16Offset: j, in: num)] {
            return false
        }
        i += 1
        j -= 1
    }
    
    return true
}

//Input:
let num = 121
//Output: true

isPalindrome(num)


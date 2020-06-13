//344. Reverse String
//Сomplexity: Easy
//https://leetcode.com/problems/reverse-string/
//----------------------------------------------------
//Runtime: 272 ms, faster than 92.35% of Swift online submissions for Reverse String.
//Memory Usage: 24.3 MB, less than 96.18% of Swift online submissions for Reverse String.
//----------------------------------------------------
//Write a function that reverses a string. The input string is given as an array of characters char[].
//
//Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.
//
//You may assume all the characters consist of printable ascii characters.
//----------------------------------------------------

func reverseString(_ s: inout [Character]) {
    var swapChar = Character("a")
    var i = 0
    var j = s.count - 1
    
    while i < j {
        swapChar = s[i]
        s[i] = s[j]
        s[j] = swapChar
        i += 1
        j -= 1
    }
}

//Input:
var str = [Character](["h","e","l","l","o"])
//Output: ["o","l","l","e","h"]

reverseString(&str)


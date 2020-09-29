// Solved by Xecca

//387. First Unique Character in a String
//Сomplexity: Easy
//https://leetcode.com/problems/first-unique-character-in-a-string/

//----------------------------------------------------
//Runtime: 248 ms, faster than 80.58% of Swift online submissions for First Unique Character in a String.
//Memory Usage: 14.1 MB, less than 100.00% of Swift online submissions for First Unique Character in a String.
//----------------------------------------------------

//Given a string, find the first non-repeating character in it and return its index. If it doesn't exist, return -1.

//----------------------------------------------------

func firstUniqChar(_ s: String) -> Int {
    var dictCharCount = [ String : Int ]()
    var i = 0

    for char in s {
        if (dictCharCount[String(char)] == nil) {
            dictCharCount.updateValue(1, forKey: String(char))
        } else {
            dictCharCount.updateValue(0, forKey: String(char))
        }
    }

    for char in s {
        if (dictCharCount[String(char)] == 1) {
            return i
        }
        i += 1
    }

    return -1
}

//
let s = "leetcode"
//return 0.

//let s = "loveleetcode"
//return 2.

firstUniqChar(s)


//1047. Remove All Adjacent Duplicates In String
//https://leetcode.com/problems/remove-all-adjacent-duplicates-in-string/
//----------------------------------------------------
//Runtime: 108 ms, faster than 100.00% of Swift online submissions for Remove All Adjacent Duplicates In String.
//Memory Usage: 20.9 MB, less than 96.19% of Swift online submissions for Remove All Adjacent Duplicates In String.
//----------------------------------------------------
//Given a string S of lowercase letters, a duplicate removal consists of choosing two adjacent and equal letters, and removing them.
//
//We repeatedly make duplicate removals on S until we no longer can.
//
//Return the final string after all such duplicate removals have been made.  It is guaranteed the answer is unique.
//----------------------------------------------------

func removeDuplicates(_ S: String) -> String {
    var str = S
    var i = 1
    var strLen = str.count

    while i < strLen {
        if str[String.Index(encodedOffset: i)] != str[String.Index(encodedOffset: (i - 1))] {
            i += 1
        } else {
            str.remove(at: String.Index(encodedOffset: i))
            str.remove(at: String.Index(encodedOffset: (i - 1)))
            strLen -= 2
            if i > 1 {
                i -= 1
            }
        }
    }

    return str
}

//Input:
let str = "abbaca"
//Output: "ca"
//Explanation:
//For example, in "abbaca" we could remove "bb" since the letters are adjacent and equal, and this is the only possible move.  The result of this move is that the string is "aaca", of which only "aa" is possible, so the final string is "ca".

removeDuplicates(str)


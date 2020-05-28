//1323. Maximum 69 Number
//https://leetcode.com/problems/maximum-69-number/
//Runtime: 4 ms, faster than 92.63% of Swift online submissions for Maximum 69 Number.
//Memory Usage: 20.4 MB, less than 100.00% of Swift online submissions for Maximum 69 Number.
//----------------------------------------------------
//Given a positive integer num consisting only of digits 6 and 9.
//
//Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).
//----------------------------------------------------

func maximum69Number (_ num: Int) -> Int {
    let numStr = String(num)
    var newStr = numStr
    var i = 0
    
    for letter in numStr {
        if letter == "6" {
            newStr.insert("9", at: String.Index(encodedOffset: i))
            newStr.remove(at: String.Index(encodedOffset: i + 1))
            break
        }
        i += 1
    }
    print(newStr)
    
    return Int(newStr) ?? 0
}

//Input:
let num = 9969
//Output: 9999
//Explanation:
//Changing the first digit results in 6669.
//Changing the second digit results in 9969.
//Changing the third digit results in 9699.
//Changing the fourth digit results in 9666.
//The maximum number is 9969.

maximum69Number(num)


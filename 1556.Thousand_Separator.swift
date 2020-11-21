//
//  LeetCodeProblems
//
//  Created by Xecca

//1556. Thousand Separator
//Difficult: Easy
//https://leetcode.com/problems/thousand-separator/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Thousand Separator.
//Memory Usage: 13.5 MB, less than 100.00% of Swift online submissions for Thousand Separator.

//
//Given an integer n, add a dot (".") as the thousands separator and return it in string format.
//

func thousandSeparator(_ n: Int) -> String {
    var strNum = String(n)
    var i = strNum.count - 1
    var count = 1

    while i > 0 {
        if count % 3 == 0 {
            strNum.insert(".", at: String.Index(utf16Offset: i, in: strNum))
        }
        count += 1
        i -= 1
    }

    return strNum
}

//Example 1:
//Input: n = 987
//Output: "987"
//Example 2:
//Input: n = 1234
//Output: "1.234"
//Example 3:
//Input: n = 123456789
//Output: "123.456.789"
//Example 4:
//Input: n = 0
//Output: "0"

//Test cases:

if thousandSeparator(987) == "987" { print("Correct!") } else { print("Error!") }
if thousandSeparator(123456789) == "123.456.789" { print("Correct!") } else { print("Error!") }


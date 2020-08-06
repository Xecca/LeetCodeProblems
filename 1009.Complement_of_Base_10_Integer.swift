//1009. Complement of Base 10 Integer
//Сomplexity: Easy
//https://leetcode.com/problems/complement-of-base-10-integer/

//----------------------------------------------------
//Runtime: 4 ms, faster than 93.33% of Swift online submissions for Complement of Base 10 Integer.
//Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Complement of Base 10 Integer.
//----------------------------------------------------

//Every non-negative integer N has a binary representation.  For example, 5 can be represented as "101" in binary, 11 as "1011" in binary, and so on.  Note that except for N = 0, there are no leading zeroes in any binary representation.
//
//The complement of a binary representation is the number in binary you get when changing every 1 to a 0 and 0 to a 1.  For example, the complement of "101" in binary is "010" in binary.
//
//For a given number N in base-10, return the complement of it's binary representation as a base-10 integer.

//----------------------------------------------------

func bitwiseComplement(_ N: Int) -> Int {

    var tempNum = N
    var strNum = String()
    var multi = 1
    
    if N == 0 {
        return 1
    }

    while tempNum >= 1 {
        if tempNum % 2 == 0 {
            strNum.insert("1", at: String.Index(utf16Offset: 0, in: strNum))
        } else {
            strNum.insert("0", at: String.Index(utf16Offset: 0, in: strNum))
        }
        tempNum /= 2
    }

    var i = strNum.count - 1
    var sum = 0

    while i >= 0 {
        if strNum[String.Index(utf16Offset: i, in: strNum)] == "1" {
            sum += multi
        }
        multi *= 2
        i -= 1
    }

    return sum
}

//Input:
let N = 5
//Output: 2
//Explanation: 5 is "101" in binary, with complement "010" in binary, which is 2 in base-10.

bitwiseComplement(N)


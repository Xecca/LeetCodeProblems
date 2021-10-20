// Solved by Xecca

//67. Add Binary
//Difficult: Easy
//https://leetcode.com/problems/add-binary/

//Runtime: 8 ms, faster than 97.65% of Swift online submissions for Add Binary.
//Memory Usage: 14.2 MB, less than 71.48% of Swift online submissions for Add Binary.

//

//Given two binary strings a and b, return their sum as a binary string.
//
//Constraints:
//
//1 <= a.length, b.length <= 10^4
//a and b consist only of '0' or '1' characters.
//Each string does not contain leading zeros except for the zero itself.

//

func addBinary(_ a: String, _ b: String) -> String {
    var arrOfBinary = Array(repeating: "0", count: max(a.count, b.count))

    for (i, char) in a.reversed().enumerated() {
        arrOfBinary[i] = String(char)
    }
    
    for (i, char) in b.reversed().enumerated() {
        if char == "1" {
            addOne(i, &arrOfBinary)
        }
    }
    
    var finalStr = ""
    for char in arrOfBinary {
        finalStr.insert(contentsOf: char, at: String.Index(utf16Offset: 0, in: finalStr))
    }
    
    return finalStr
}

func addOne(_ position: Int, _ binaryArr: inout [String]) {
    var bitCarry = 0
    var i = position
    
    while i < binaryArr.count {
        if binaryArr[i] == "1" {
            binaryArr[i] = "0"
            bitCarry = 1
        } else {
            binaryArr[i] = "1"
            bitCarry = 0
            break
        }
        i += 1
    }
    if bitCarry == 1 {
        binaryArr.append("1")
    }
}

//

//Example 1:
//
//Input: a = "11", b = "1"
//Output: "100"
//Example 2:
//
//Input: a = "1010", b = "1011"
//Output: "10101"

//Test cases:

if addBinary("1010", "1011") == "10101" { print("Correct!") } else { print("Error! Expexted: \("10101")") }


//476. Number Complement
//Сomplexity: Easy
//https://leetcode.com/problems/number-complement/
//----------------------------------------------------
//Runtime: 4 ms, faster than 87.32% of Swift online submissions for Number Complement.
//Memory Usage: 20.8 MB, less than 66.67% of Swift online submissions for Number Complement.
//----------------------------------------------------

//Given a positive integer num, output its complement number. The complement strategy is to flip the bits of its binary representation.

//----------------------------------------------------

func findComplement(_ num: Int) -> Int {
    var newNum = num
    var strBinary = ""
    var complement = ""
    var i = 0
    
    while newNum >= 1 {
        let binaryNum = newNum % 2
        newNum /= 2
        strBinary.insert(contentsOf: String(binaryNum), at: String.Index(utf16Offset: 0, in: strBinary))
    }
    print(strBinary)
    while i < strBinary.count {
        if strBinary[String.Index(utf16Offset: i, in: strBinary)] == "1" {
            complement.append("0")
        } else {
            complement.append("1")
        }
        i += 1
    }
    print(complement)
    
    return convertToDec(complement)
}

func convertToDec(_ binary: String) -> Int {
    var decNum = 0
    var i = binary.count - 1
    var increaser = 1
    
    while i >= 0 {
        if binary[String.Index(utf16Offset: i, in: binary)] == "1" {
            decNum += (increaser * 1)
        }
        i -= 1
        increaser *= 2
    }
    
    return decNum
}

//Input:
let num = 10
//Output: 2
//Explanation: The binary representation of 5 is 101 (no leading zero bits), and its complement is 010. So you need to output 2.

findComplement(num)


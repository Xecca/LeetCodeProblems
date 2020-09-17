//7. Reverse Integer
//Сomplexity: Easy
//https://leetcode.com/problems/reverse-integer/

//----------------------------------------------------
//Runtime: 8 ms, faster than 84.37% of Swift online submissions for Reverse Integer.
//Memory Usage: 20.6 MB, less than 72.57% of Swift online submissions for Reverse Integer.
//----------------------------------------------------

//Given a 32-bit signed integer, reverse digits of an integer.

//----------------------------------------------------

func reverse(_ x: Int) -> Int {
    let strX = String(x)
    var finX = String()
    let length = strX.count
    var i = 0
    var ins = 0
    
    if strX[String.Index(utf16Offset: 0, in: strX)] == "-" {
        finX.insert(strX[String.Index(utf16Offset: 0, in: strX)], at: String.Index(utf16Offset: 0, in: strX))
        ins = 1
        i += 1
    }
    
    while i < length {
        finX.insert(strX[String.Index(utf16Offset: i, in: strX)], at: String.Index(utf16Offset: ins, in: strX))
        i += 1
    }
    let finNum = Int32(finX) ?? 0
    
    return Int(finNum)
}

//Input:
let num = 1534236469
//Output: 321

reverse(num)


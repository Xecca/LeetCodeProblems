// Solved by Xecca

//13. Roman to Integer
//Сomplexity: Easy
//https://leetcode.com/problems/roman-to-integer/

//----------------------------------------------------
//Runtime: 32 ms, faster than 85.07% of Swift online submissions for Roman to Integer.
//Memory Usage: 20.8 MB, less than 83.58% of Swift online submissions for Roman to Integer.
//----------------------------------------------------

//Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, two is written as II in Roman numeral, just two one's added together. Twelve is written as, XII, which is simply X + II. The number twenty seven is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given a roman numeral, convert it to an integer. Input is guaranteed to be within the range from 1 to 3999.

//----------------------------------------------------

func romanToInt(_ s: String) -> Int {
    let romanDict = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
    var intArr = [Int]()
    var i = 0
    var result = 0
    var isItUnique = false
    
    for char in s {
        intArr.append(romanDict[String(char)]!)
    }
    
    let length = intArr.count
    
    while i < length {
        let currentNum = intArr[i]
        result += currentNum
        var tempIndex = i + 1

        if i + 1 < length && currentNum > intArr[i + 1] {
            while tempIndex < length {
                if intArr[tempIndex] == currentNum && tempIndex != i + 1 {
                    isItUnique = false
                    result += currentNum
                    break
                } else {
                    isItUnique = true
                }
                tempIndex += 1
            }
            if isItUnique == false {
                i = tempIndex + 1
                tempIndex -= 1
                while intArr[tempIndex] != currentNum {
                    result -= intArr[tempIndex]
                    tempIndex -= 1
                }
                print("result = \(result)")
                print("i = \(i)")
                continue
            }
        } else if i + 1 < length && currentNum < intArr[i + 1] {
            result -= 2 * currentNum
        }
        i += 1
    }
    
    print(intArr)
    
    return result
}

//Input:
let romanian = "MCMXCIV"
//Output: 1994
//Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

romanToInt(romanian)


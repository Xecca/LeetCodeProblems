// Solved by Xecca

//1805. Number of Different Integers in a String
//Difficult: Easy
//https://leetcode.com/problems/number-of-different-integers-in-a-string/

//Runtime: 5 ms, faster than 80.00% of Swift online submissions for Number of Different Integers in a String.
//Memory Usage: 14.2 MB, less than 100.00% of Swift online submissions for Number of Different Integers in a String.

//

//You are given a string word that consists of digits and lowercase English letters.
//
//You will replace every non-digit character with a space. For example, "a123bc34d8ef34" will become " 123  34 8  34". Notice that you are left with some integers that are separated by at least one space: "123", "34", "8", and "34".
//
//Return the number of different integers after performing the replacement operations on word.
//
//Two integers are considered different if their decimal representations without any leading zeros are different.
////
//Constraints:
//
//1 <= word.length <= 1000
//word consists of digits and lowercase English letters.

//

func numDifferentIntegers(_ word: String) -> Int {
    var i = 0
    let arrOfChars = Array(word)
    let length = arrOfChars.count
    var integers: [String] = []
    
    while i < length {
        if arrOfChars[i].asciiValue! > 47 && arrOfChars[i].asciiValue! < 58 {
            var tempStrArrOfInt: [String] = []
            while i < length && arrOfChars[i].asciiValue! > 47 && arrOfChars[i].asciiValue! < 58 {
                tempStrArrOfInt.append(String(arrOfChars[i]))
                i += 1
            }
             while tempStrArrOfInt.count > 0 && tempStrArrOfInt[0] == "0" {
                    tempStrArrOfInt.remove(at: 0)
                }
            var tempStrOfInt = ""
            for numStr in tempStrArrOfInt {
                tempStrOfInt.append(numStr)
            }
            integers.append(tempStrOfInt)
        } else {
            i += 1
        }
        
    }
    let setOfInt = Set(integers)
    
    return setOfInt.count
}

//

//Example 1:
//
//Input: word = "a123bc34d8ef34"
//Output: 3
//Explanation: The three different integers are "123", "34", and "8". Notice that "34" is only counted once.
//Example 2:
//
//Input: word = "leet1234code234"
//Output: 2
//Example 3:
//
//Input: word = "a1b01c001"
//Output: 1
//Explanation: The three integers "1", "01", and "001" all represent the same integer because
//the leading zeros are ignored when comparing their decimal values.

//Test cases:

if numDifferentIntegers("leet1234code234") == 2 { print("Correct!") } else { print("Error! Expexted: \(2)") }


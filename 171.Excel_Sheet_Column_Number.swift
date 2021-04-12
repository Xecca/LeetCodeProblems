// Solved by Xecca

//171. Excel Sheet Column Number
//Difficult: Easy
//https://leetcode.com/problems/excel-sheet-column-number/

//Runtime: 4 ms, faster than 93.65% of Swift online submissions for Excel Sheet Column Number.
//Memory Usage: 14.2 MB, less than 79.37% of Swift online submissions for Excel Sheet Column Number.

//
    //Given a string columnTitle that represents the column title as appear in an Excel sheet, return its corresponding column number.
    //
    //For example:
    //
    //A -> 1
    //B -> 2
    //C -> 3
    //...
    //Z -> 26
    //AA -> 27
    //AB -> 28
    //...

    //Constraints:
    //
    //1 <= columnTitle.length <= 7
    //columnTitle consists only of uppercase English letters.
    //columnTitle is in the range ["A", "FXSHRXW"].
//

func titleToNumber(_ columnTitle: String) -> Int {
    
    var numbers: [Int] = []
    var num = 0
    var i = 1
    var length = columnTitle.count
    var result = 0
    
    for letter in columnTitle {
        num = Int(letter.asciiValue ?? 0) - 64
        numbers.append(num)
    }
    
    for currentNum in numbers {
        num = 1
        i = 1
        while i < length {
            num = num * 26
            i += 1
        }
        length -= 1
        result += num * currentNum
    }
    
//    print(numbers)
//    print(result)
    
    return result
}

//Example 1:
//
//Input: columnTitle = "A"
//Output: 1
//Example 2:
//
//Input: columnTitle = "AB"
//Output: 28
//Example 3:
//
//Input: columnTitle = "ZY"
//Output: 701
//Example 4:
//
//Input: columnTitle = "FXSHRXW"
//Output: 2147483647

//Test cases:

if titleToNumber("A") == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }
if titleToNumber("AB") == 28 { print("Correct!") } else { print("Error! Expected: \(28)") }
if titleToNumber("CT") == 98 { print("Correct!") } else { print("Error! Expected: \(98)") }
if titleToNumber("ZY") == 701 { print("Correct!") } else { print("Error! Expected: \(701)") }
if titleToNumber("BTS") == 1891 { print("Correct!") } else { print("Error! Expected: \(1891)") }
if titleToNumber("FXSHRXW") == 2147483647 { print("Correct!") } else { print("Error! Expected: \(2147483647)") }


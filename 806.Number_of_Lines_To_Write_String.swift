//806. Number of Lines To Write String
//Сomplexity: Easy
//https://leetcode.com/problems/number-of-lines-to-write-string/
//----------------------------------------------------
//Runtime: 4 ms, faster than 91.30% of Swift online submissions for Number of Lines To Write String.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Number of Lines To Write String.
//----------------------------------------------------
//
//We are to write the letters of a given string S, from left to right into lines. Each line has maximum width 100 units, and if writing a letter would cause the width of the line to exceed 100 units, it is written on the next line. We are given an array widths, an array where widths[0] is the width of 'a', widths[1] is the width of 'b', ..., and widths[25] is the width of 'z'.
//
//Now answer two questions: how many lines have at least one character from S, and what is the width used by the last such line? Return your answer as an integer list of length 2.

//----------------------------------------------------

func numberOfLines(_ widths: [Int], _ S: String) -> [Int] {
//    print(widths.count)
    var countLines = 1
//    var asciiNumChars = [Int]()
    var sumWidthsChars = 0
    
    for char in S.unicodeScalars {
//        asciiNumChars.append(Int(char.value) - 97)
        if sumWidthsChars + widths[Int(char.value) - 97] <= 100 {
            sumWidthsChars += widths[Int(char.value) - 97]
        } else {
            countLines += 1
            sumWidthsChars = 0
            sumWidthsChars += widths[Int(char.value) - 97]
        }
        
    }
    
//    print(asciiNumChars)
    print(sumWidthsChars)
    print(countLines)
    
    return [countLines, sumWidthsChars]
}

//Example :
//Input:
//
let widths = [4,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10,10]
//
let S = "bbbcccdddaaa"
//Output: [2, 4]
//Explanation:
//All letters except 'a' have the same length of 10, and
//"bbbcccdddaa" will cover 9 * 10 + 2 * 4 = 98 units.
//For the last 'a', it is written on the second line because
//there is only 2 units left in the first line.
//So the answer is 2 lines, plus 4 units in the second line.

numberOfLines(widths, S)


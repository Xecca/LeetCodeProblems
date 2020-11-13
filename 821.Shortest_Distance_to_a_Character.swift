// Solved by Xecca

//821. Shortest Distance to a Character
//Сomplexity: Easy
//https://leetcode.com/problems/minimum-cost-to-move-chips-to-the-same-position/

//----------------------------------------------------
//Runtime: 12 ms, faster than 92.86% of Swift online submissions for Shortest Distance to a Character.
//Memory Usage: 14.2 MB, less than 92.86% of Swift online submissions for Shortest Distance to a Character.
//----------------------------------------------------

//Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.
//
//Note:
//
//S string length is in [1, 10000].
//C is a single character, and guaranteed to be in string S.
//All letters in S and C are lowercase.

//----------------------------------------------------

func shortestToChar(_ S: String, _ C: Character) -> [Int] {
    var arr = Array(repeating: 0, count: S.count)
    var arrWithCharIndexes = [Int]()
    var start = 0
    var end = 0
    
    for (i, char) in S.enumerated() {
        if char == C {
            arrWithCharIndexes.append(i)
        }
    }
    
    let charCount = arrWithCharIndexes.count
    var i = 0
    var num = arrWithCharIndexes[i]
    
    if arrWithCharIndexes[0] > 0 {
        while start < arrWithCharIndexes[i] {
            arr[start] = num
            num -= 1
            start += 1
        }
    }
    while i < charCount {
        num = 0
        if i + 1 < charCount && arrWithCharIndexes[i + 1] - arrWithCharIndexes[i] > 1 {
            start = arrWithCharIndexes[i]
            end = arrWithCharIndexes[i + 1]
            while start <= end {
                arr[start] = num
                arr[end] = num
                num += 1
                start += 1
                end -= 1
            }
        }
        i += 1
    }
    if arrWithCharIndexes[charCount - 1] < S.count - 1 {
        num = 0
        i = arrWithCharIndexes[charCount - 1]
        while i < S.count {
            arr[i] = num
            i += 1
            num += 1
        }
    }
    
    return arr
}

//Example 1:
//
//Input: S = "loveleetcode", C = 'e'
//Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]

//Test cases:
//
if shortestToChar("loveleetcode", "e") == [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0] { print("Correct!") } else { print("Error! Expected: \([3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0])") }
if shortestToChar("aaba", "b") == [2,1,0,1] { print("Correct!") } else { print("Error! Expected: \([2,1,0,1])") }


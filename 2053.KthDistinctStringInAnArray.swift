// Solved by Xecca

import Foundation

//2053. Kth Distinct String in an Array
//Difficult: Easy
//https://leetcode.com/problems/kth-distinct-string-in-an-array/

//Runtime: 40 ms, faster than 92.00% of Swift online submissions for Kth Distinct String in an Array.
//Memory Usage: 14.6 MB, less than 48.00% of Swift online submissions for Kth Distinct String in an Array.
    
//

//A distinct string is a string that is present only once in an array.
//
//Given an array of strings arr, and an integer k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty string "".
//
//Note that the strings are considered in the order in which they appear in the array.
//
//Constraints:
//
//1 <= k <= arr.length <= 1000
//1 <= arr[i].length <= 5
//arr[i] consists of lowercase English letters.

//

func kthDistinct(_ arr: [String], _ k: Int) -> String {
    var dict: [String: [Int]] = [:]    // [count, index]
    
    for (i, word) in arr.enumerated() {
        var currArr = dict[word] ?? [0, 0]
        currArr[0] += 1
        currArr[1] = i
        dict.updateValue(currArr, forKey: word)
    }
    
    var indexesOfDistinct: [Int] = []
    
    for (_, value) in dict {
        if value[0] == 1 {
            indexesOfDistinct.append(value[1])
        }
    }
    
    if indexesOfDistinct.count >= k {
        indexesOfDistinct.sort()
        let targetDist = indexesOfDistinct[k - 1]
        for (key, value) in dict {
            if value[1] == targetDist {
                return key
            }
        }
    }
    
    return ""
}

//Example 1:
//
//Input: arr = ["d","b","c","b","c","a"], k = 2
//Output: "a"
//Explanation:
//The only distinct strings in arr are "d" and "a".
//"d" appears 1st, so it is the 1st distinct string.
//"a" appears 2nd, so it is the 2nd distinct string.
//Since k == 2, "a" is returned.
//Example 2:
//
//Input: arr = ["aaa","aa","a"], k = 1
//Output: "aaa"
//Explanation:
//All strings in arr are distinct, so the 1st string "aaa" is returned.
//Example 3:
//
//Input: arr = ["a","b","a"], k = 3
//Output: ""
//Explanation:
//The only distinct string is "b". Since there are fewer than 3 distinct strings, we return an empty string "".

//Test cases:

let input = ["d","b","c","b","c","a"]
let input2 = 2
let answer = "a"

if kthDistinct(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


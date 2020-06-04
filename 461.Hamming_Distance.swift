//461. Hamming Distance
//https://leetcode.com/problems/hamming-distance/
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Hamming Distance.
//Memory Usage: 20.8 MB, less than 50.00% of Swift online submissions for Hamming Distance.
//----------------------------------------------------
//The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
//
//Given two integers x and y, calculate the Hamming distance.
//
//Note:
//0 ≤ x, y < 231.
//----------------------------------------------------

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    
    return findDifferenceCount(makeBinaryNumber(x), makeBinaryNumber(y))
}

func makeBinaryNumber(_ num: Int) -> String {
    var strNum = ""
    var newNum = num
    
    while newNum > 0 {
        if newNum % 2 == 0 {
            strNum.insert("0", at: String.Index(encodedOffset: 0))
        } else {
            strNum.insert("1", at: String.Index(encodedOffset: 0))
        }
        newNum /= 2
    }
    while strNum.count < 32 {
        strNum.insert("0", at: String.Index(encodedOffset: 0))
    }
    
    return strNum
}

func findDifferenceCount(_ str1: String, _ str2: String) -> Int {
    var i = 0
    var diffCount = 0

    while i < 32 {
        if str1[String.Index(encodedOffset: i)] != str2[String.Index(encodedOffset: i)] {
            diffCount += 1
        }
        i += 1
    }
    
    return diffCount
}

//Input:
let x = 1, y = 4
//
//Output: 2
//
//Explanation:
//32 16 8 4 2 1
// 1   (0 0 0 1)
// 4   (0 1 0 0)
//       ↑   ↑
//
//The above arrows point to positions where the corresponding bits are different.

hammingDistance(x, y)


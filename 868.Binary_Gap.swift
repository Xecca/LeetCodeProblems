//868. Binary Gap
//Сomplexity: Easy
//https://leetcode.com/problems/binary-gap/

//----------------------------------------------------
//Runtime: 4 ms, faster than 94.44% of Swift online submissions for Binary Gap.
//Memory Usage: 20.9 MB, less than 62.50% of Swift online submissions for Binary Gap.
//----------------------------------------------------

//Given a positive integer N, find and return the longest distance between two consecutive 1's in the binary representation of N.
//
//If there aren't two consecutive 1's, return 0.

//----------------------------------------------------

func binaryGap(_ N: Int) -> Int {
    var num = N
    var binaryStr = String()
    var maxGap = 0
    var countOnes = 0
    var i = 0
    
    while num >= 1 {
        if num % 2 == 0 {
            binaryStr.insert("0", at: String.Index(utf16Offset: 0, in: binaryStr))
        } else {
            binaryStr.insert("1", at: String.Index(utf16Offset: 0, in: binaryStr))
        }
        num /= 2
    }
    var j = 0
    while i < binaryStr.count {
        j = i + 1
        while j < binaryStr.count {
            if binaryStr[String.Index(utf16Offset: i, in: binaryStr)] == "1" && binaryStr[String.Index(utf16Offset: i, in: binaryStr)] == binaryStr[String.Index(utf16Offset: j, in: binaryStr)] {
                if j - i > maxGap {
                    maxGap = j - i
                }
                countOnes += 2
                i = j
                break
            }
            j += 1
        }
        if j != i {
            i += 1
        }

    }
    print(binaryStr)
    
    if countOnes <= 1 {
        return 0
    }
    
    return maxGap
}

//Input:
let num = 13
//Output: 2
//Explanation:
//22 in binary is 0b10110.
//In the binary representation of 22, there are three ones, and two consecutive pairs of 1's.
//The first consecutive pair of 1's have distance 2.
//The second consecutive pair of 1's have distance 1.
//The answer is the largest of these two distances, which is 2.

binaryGap(num)


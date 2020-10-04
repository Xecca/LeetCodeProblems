// Solved by Xecca

//202. Happy Number
//Сomplexity: Easy
//https://leetcode.com/problems/happy-number/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Happy Number.
//Memory Usage: 14 MB, less than 94.98% of Swift online submissions for Happy Number.
//----------------------------------------------------

//Write an algorithm to determine if a number n is "happy".
//
//A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
//
//Return True if n is a happy number, and False if not.

//----------------------------------------------------

func isHappy(_ n: Int) -> Bool {
    var devidedNum = [Int]()
    var sumSquares = n

    if sumSquares == 1 {
        return true
    }
    while sumSquares != 1 {
        devidedNum = partitionNum(sumSquares)
        sumSquares = 0
        for digit in devidedNum {
            sumSquares += digit * digit
        }
        if sumSquares == 4 {
            return false
        }
    }

    return true
}

func partitionNum(_ num: Int) -> [Int] {
    var newNum = num
    var partitionedNum = [Int]()

    while newNum >= 1 {
        partitionedNum.append(newNum % 10)
        newNum /= 10
    }

    return partitionedNum
}

//Input:
let n = 19
//Output: true
//Explanation:
//1^2 + 9^2 = 82
//8^2 + 2^2 = 68
//6^2 + 8^2 = 100
//1^2 + 0^2 + 0^2 = 1

isHappy(n)


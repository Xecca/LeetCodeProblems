//509. Fibonacci Number
//Сomplexity: Easy
//https://leetcode.com/problems/fibonacci-number/
//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Fibonacci Number.
//Memory Usage: 20.6 MB, less than 79.58% of Swift online submissions for Fibonacci Number.
//----------------------------------------------------
//The Fibonacci numbers, commonly denoted F(n) form a sequence, called the Fibonacci sequence, such that each number is the sum of the two preceding ones, starting from 0 and 1. That is,
//
//F(0) = 0,   F(1) = 1
//F(N) = F(N - 1) + F(N - 2), for N > 1.
//Given N, calculate F(N).
//0 ≤ N ≤ 30.
//----------------------------------------------------

func fib(_ N: Int) -> Int {
    if N == 0 {
        return 0
    }
    var i = 1
    var fibRow = [0, 1]

    while i < N {
        fibRow.append(fibRow[i] + fibRow[i - 1])
        i += 1
    }
    
    return fibRow[i]
}

//Input:
let num = 15
//Output: 610
//Explanation: F(15) = F(14) + F(13) = 377 + 233 = 15.

fib(num)


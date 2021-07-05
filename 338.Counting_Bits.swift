// Solved by Xecca

//338. Counting Bits
//Difficult: Easy
//https://leetcode.com/problems/counting-bits/

//Runtime: Runtime: 48 ms, faster than 100.00% of Swift online submissions for Counting Bits.
//Memory Usage: 19.2 MB, less than 76.41% of Swift online submissions for Counting Bits.

//

//Given an integer n, return an array ans of length n + 1 such that for each i (0 <= i <= n), ans[i] is the number of 1's in the binary representation of i.
//
//Constraints:
//
//0 <= n <= 10^5

//

func countBits(_ n: Int) -> [Int] {
    var i = 0
    var arr = Array(repeating: 0, count: n + 1)
    while i <= n {
        // arr[i] = countBitsInNum(i)
        arr[i] = arr[i / 2] + i % 2
        i += 1
    }
    
    return arr
}

//     func countBitsInNum(_ n: Int) -> Int {
//         var num = n
//         var count = 0
    
//         while num > 0 {
//             count += num % 2
//             num /= 2
//         }
    
//         return count
//     }

//Example 1:
//
//Input: n = 2
//Output: [0,1,1]
//Explanation:
//0 --> 0
//1 --> 1
//2 --> 10
//Example 2:
//
//Input: n = 5
//Output: [0,1,1,2,1,2]
//Explanation:
//0 --> 0
//1 --> 1
//2 --> 10
//3 --> 11
//4 --> 100
//5 --> 101

//Test cases:

if countBits(5) == [0,1,1,2,1,2] { print("Correct!") } else { print("Error! Expected: \([0,1,1,2,1,2])") }


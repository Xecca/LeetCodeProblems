//
//  LeetCodeProblems
//
//  Created by Xecca

//1652. Defuse the Bomb
//Difficult: Easy
//https://leetcode.com/problems/defuse-the-bomb/

//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Defuse the Bomb.
//Memory Usage: 14.3 MB, less than 10.00% of Swift online submissions for Defuse the Bomb.

//
//You have a bomb to defuse, and your time is running out! Your informer will provide you with a circular array code of length of n and a key k.
//
//To decrypt the code, you must replace every number. All the numbers are replaced simultaneously.
//
//If k > 0, replace the ith number with the sum of the next k numbers.
//If k < 0, replace the ith number with the sum of the previous k numbers.
//If k == 0, replace the ith number with 0.
//As code is circular, the next element of code[n-1] is code[0], and the previous element of code[0] is code[n-1].
//
//Given the circular array code and an integer key k, return the decrypted code to defuse the bomb!
//

func decrypt(_ code: [Int], _ k: Int) -> [Int] {
    var result = Array(repeating: 0, count: code.count)
    var i = 0
    var count = 0
    
    if k == 0 {
        return result
    } else if k > 0 {
        for (index, _) in code.enumerated() {
            i = index
            while count < k {
                i += 1
                if i == code.count {
                    i = 0
                }
                result[index] += code[i]
                count += 1
            }
            count = 0
        }
    } else {
        count = 0
        for (index, _) in code.enumerated() {
            i = index
            while count > k {
                i -= 1
                if i < 0 {
                    i = code.count - 1
                }
                result[index] += code[i]
                count -= 1
            }
            count = 0
        }
    }
    
    return result
}

//Example 1:
//Input: code = [5,7,1,4], k = 3
//Output: [12,10,16,13]
//Explanation: Each number is replaced by the sum of the next 3 numbers. The decrypted code is [7+1+4, 1+4+5, 4+5+7, 5+7+1]. Notice that the numbers wrap around.
//Example 2:
//Input: code = [1,2,3,4], k = 0
//Output: [0,0,0,0]
//Explanation: When k is zero, the numbers are replaced by 0.
//Example 3:
//Input: code = [2,4,9,3], k = -2
//Output: [12,5,6,13]
//Explanation: The decrypted code is [3+9, 2+3, 4+2, 9+4]. Notice that the numbers wrap around again. If k is negative, the sum is of the previous numbers.

//Test cases:

if decrypt([5,7,1,4], 3) == [12,10,16,13] { print("Correct!") } else { print("Error!") }
if decrypt([1,2,3,4], 0) == [0,0,0,0] { print("Correct!") } else { print("Error!") }
if decrypt([2,4,9,3], -2) == [12,5,6,13] { print("Correct!") } else { print("Error!") }



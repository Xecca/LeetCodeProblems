// Solved by Xecca

//1720. Decode XORed Array
//Difficult: Easy
//https://leetcode.com/problems/partitioning-into-minimum-number-of-deci-binary-numbers/

//Runtime: 256 ms, faster than 100.00% of Swift online submissions for Decode XORed Array.
//Memory Usage: 15.2 MB, less than 75.41% of Swift online submissions for Decode XORed Array.

//

//There is a hidden integer array arr that consists of n non-negative integers.
//
//It was encoded into another integer array encoded of length n - 1, such that encoded[i] = arr[i] XOR arr[i + 1]. For example, if arr = [1,0,2,1], then encoded = [1,2,3].
//
//You are given the encoded array. You are also given an integer first, that is the first element of arr, i.e. arr[0].
//
//Return the original array arr. It can be proved that the answer exists and is unique.

//Constraints:
//
//2 <= n <= 10^4
//encoded.length == n - 1
//0 <= encoded[i] <= 10^5
//0 <= first <= 10^5

//

func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var arr: [Int] = Array(repeating: 0, count: encoded.count + 1)
    var i = 0
    
    arr[0] = first

    while i < encoded.count {
        arr[i + 1] = encoded[i] ^ arr[i]
        i += 1
    }
    
    return arr
}

//Example 1:
//
//Input: encoded = [1,2,3], first = 1
//Output: [1,0,2,1]
//Explanation: If arr = [1,0,2,1], then first = 1 and encoded = [1 XOR 0, 0 XOR 2, 2 XOR 1] = [1,2,3]
//Example 2:
//
//Input: encoded = [6,2,7,3], first = 4
//Output: [4,2,0,7,4]

//Test cases:

if decode([1,2,3], 1) == [1,0,2,1] { print("Correct!") } else { print("Error! Expected: \([1,0,2,1])") }


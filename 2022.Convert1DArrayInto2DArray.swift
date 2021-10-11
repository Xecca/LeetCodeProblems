// Solved by Xecca

//2022. Convert 1D Array Into 2D Array
//Difficult: Easy
//https://leetcode.com/problems/convert-1d-array-into-2d-array/

//Runtime: 1180 ms, faster than 38.89% of Swift online submissions for Convert 1D Array Into 2D Array.
//Memory Usage: 19.9 MB, less than 38.89% of Swift online submissions for Convert 1D Array Into 2D Array.

//

//You are given a 0-indexed 1-dimensional (1D) integer array original, and two integers, m and n. You are tasked with creating a 2-dimensional (2D) array with m rows and n columns using all the elements from original.
//
//The elements from indices 0 to n - 1 (inclusive) of original should form the first row of the constructed 2D array, the elements from indices n to 2 * n - 1 (inclusive) should form the second row of the constructed 2D array, and so on.
//
//Return an m x n 2D array constructed according to the above procedure, or an empty 2D array if it is impossible.

//Constraints:
//
//1 <= original.length <= 5 * 10^4
//1 <= original[i] <= 10^5
//1 <= m, n <= 4 * 10^4

//

func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
    if original.count != m * n {
        return []
    }
    var twoDemArr: [[Int]] = Array(repeating: Array(repeating: 0, count: n), count: m)
    var i = 0
    var r = 0
    var c = 0
    
    while r < m {
        c = 0
        while c < n {
            twoDemArr[r][c] = original[i]
            i += 1
            c += 1
        }
        r += 1
    }
    
    return twoDemArr
}

//

//Example 1:
//
//Input: original = [1,2,3,4], m = 2, n = 2
//Output: [[1,2],[3,4]]
//Explanation:
//The constructed 2D array should contain 2 rows and 2 columns.
//The first group of n=2 elements in original, [1,2], becomes the first row in the constructed 2D array.
//The second group of n=2 elements in original, [3,4], becomes the second row in the constructed 2D array.
//Example 2:
//
//Input: original = [1,2,3], m = 1, n = 3
//Output: [[1,2,3]]
//Explanation:
//The constructed 2D array should contain 1 row and 3 columns.
//Put all three elements in original into the first row of the constructed 2D array.
//Example 3:
//
//Input: original = [1,2], m = 1, n = 1
//Output: []
//Explanation:
//There are 2 elements in original.
//It is impossible to fit 2 elements in a 1x1 2D array, so return an empty 2D array.
//Example 4:
//
//Input: original = [3], m = 1, n = 2
//Output: []
//Explanation:
//There is 1 element in original.
//It is impossible to make 1 element fill all the spots in a 1x2 2D array, so return an empty 2D array.

//Test cases:

if construct2DArray([1,2,3,4], 1, 3) == [[1,2,3]] { print("Correct!") } else { print("Error! Expexted: \([[1,2,3]])") }


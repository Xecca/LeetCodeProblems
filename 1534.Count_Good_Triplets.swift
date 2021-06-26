// Solved by Xecca

//1534. Count Good Triplets
//Difficult: Easy
//https://leetcode.com/problems/count-good-triplets/

//Runtime: 272 ms, faster than 59.52% of Swift online submissions for Count Good Triplets.
//Memory Usage: 13.8 MB, less than 78.57% of Swift online submissions for Count Good Triplets.

//

//Given an array of integers arr, and three integers a, b and c. You need to find the number of good triplets.
//
//A triplet (arr[i], arr[j], arr[k]) is good if the following conditions are true:
//
//0 <= i < j < k < arr.length
//|arr[i] - arr[j]| <= a
//|arr[j] - arr[k]| <= b
//|arr[i] - arr[k]| <= c
//Where |x| denotes the absolute value of x.
//
//Return the number of good triplets.
//
//Constraints:
//
//3 <= arr.length <= 100
//0 <= arr[i] <= 1000
//0 <= a, b, c <= 1000

//

func countGoodTriplets(_ arr: [Int], _ a: Int, _ b: Int, _ c: Int) -> Int {
    var i = 0
    var j = 1
    var k = 2
    var goodTriplets = 0
    
    while i < arr.count - 2 {
        if abs(arr[i] - arr[j]) <= a && abs(arr[j] - arr[k]) <= b && abs(arr[i] - arr[k]) <= c {
            goodTriplets += 1
            // print(arr[i], arr[j], arr[k])
        }
    
        if k < arr.count - 1 {
            k += 1
        } else if j < arr.count - 2 {
            j += 1
            k = j + 1
        } else {
            i += 1
            j = i + 1
            k = i + 2
        }
    }
    
    return goodTriplets
}

//Example 1:
//
//Input: arr = [3,0,1,1,9,7], a = 7, b = 2, c = 3
//Output: 4
//Explanation: There are 4 good triplets: [(3,0,1), (3,0,1), (3,1,1), (0,1,1)].
//Example 2:
//
//Input: arr = [1,1,2,2,3], a = 0, b = 0, c = 1
//Output: 0
//Explanation: No triplet satisfies all conditions.

//Test cases:

if countGoodTriplets([3,0,1,1,9,7], 7, 2, 3) == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }


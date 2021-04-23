// Solved by Xecca

//1331. Rank Transform of an Array
//Difficult: Easy
//https://leetcode.com/problems/binary-search/

//Runtime: 576 ms, faster than 94.44% of Swift online submissions for Rank Transform of an Array.
//Memory Usage: 23.8 MB, less than 72.22% of Swift online submissions for Rank Transform of an Array.

//

//Given an array of integers arr, replace each element with its rank.
//
//The rank represents how large the element is. The rank has the following rules:
//
//Rank is an integer starting from 1.
//The larger the element, the larger the rank. If two elements are equal, their rank must be the same.
//Rank should be as small as possible.

//Constraints:
//
//0 <= arr.length <= 105
//-109 <= arr[i] <= 109

//

func arrayRankTransform(_ arr: [Int]) -> [Int] {

    var dict: [Int: Int] = [:]
    let sortedArr = Set(arr).sorted()
    var rank = Array(repeating: 0, count: arr.count)

    for (i, num) in sortedArr.enumerated() {
        dict.updateValue(i + 1, forKey: num)
    }

    for (i, num) in arr.enumerated() {
        rank[i] = dict[num] ?? 0
    }

    return rank
}

//Example 1:
//
//Input: arr = [40,10,20,30]
//Output: [4,1,2,3]
//Explanation: 40 is the largest element. 10 is the smallest. 20 is the second smallest. 30 is the third smallest.
//Example 2:
//
//Input: arr = [100,100,100]
//Output: [1,1,1]
//Explanation: Same elements share the same rank.
//Example 3:
//
//Input: arr = [37,12,28,9,100,56,80,5,12]
//Output: [5,3,4,2,8,6,7,1,3]

//Test cases:

if arrayRankTransform([40,10,20,30]) == [4,1,2,3] { print("Correct!") } else { print("Error! Expected: \([4,1,2,3])") }
if arrayRankTransform([100,100,100]) == [1,1,1] { print("Correct!") } else { print("Error! Expected: \([1,1,1])") }
if arrayRankTransform([37,12,28,9,100,56,80,5,12]) == [5,3,4,2,8,6,7,1,3] { print("Correct!") } else { print("Error! Expected: \([5,3,4,2,8,6,7,1,3])") }


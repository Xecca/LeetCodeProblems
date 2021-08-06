// Solved by Xecca

//888. Fair Candy Swap
//Difficult: Easy
//https://leetcode.com/problems/fair-candy-swap/

//Runtime: 3240 ms, faster than 11.11% of Swift online submissions for Fair Candy Swap.
//Memory Usage: 14.3 MB, less than 88.89% of Swift online submissions for Fair Candy Swap.

//

//Alice and Bob have a different total number of candies. You are given two integer arrays aliceSizes and bobSizes where aliceSizes[i] is the number of candies of the ith box of candy that Alice has and bobSizes[j] is the number of candies of the jth box of candy that Bob has.
//
//Since they are friends, they would like to exchange one candy box each so that after the exchange, they both have the same total amount of candy. The total amount of candy a person has is the sum of the number of candies in each box they have.
//
//Return an integer array answer where answer[0] is the number of candies in the box that Alice must exchange, and answer[1] is the number of candies in the box that Bob must exchange. If there are multiple answers, you may return any one of them. It is guaranteed that at least one answer exists.

//Constraints:
//
//1 <= aliceSizes.length, bobSizes.length <= 10^4
//1 <= aliceSizes[i], bobSizes[j] <= 10^5
//Alice and Bob have a different total number of candies.
//There will be at least one valid answer for the given input.

//

func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
    let aliceCandies = aliceSizes.reduce(0, +)
    let bobCandies = bobSizes.reduce(0, +)
    let diff = (aliceCandies - bobCandies) / 2
    
    if diff == 0 {
        return [aliceSizes[0], aliceSizes[0]]
    }
    
    for aliceCandy in aliceSizes {
        for bobCandy in bobSizes {
            if aliceCandy - bobCandy == diff {
                return [aliceCandy, bobCandy]
            }
        }
    }
    
    return []
}

//Example 1:
//
//Input: aliceSizes = [1,1], bobSizes = [2,2]
//Output: [1,2]
//Example 2:
//
//Input: aliceSizes = [1,2], bobSizes = [2,3]
//Output: [1,2]
//Example 3:
//
//Input: aliceSizes = [2], bobSizes = [1,3]
//Output: [2,3]
//Example 4:
//
//Input: aliceSizes = [1,2,5], bobSizes = [2,4]
//Output: [5,4]

//Test cases:

if fairCandySwap([1,2,5], [2,4]) == [5,4] { print("Correct!") } else { print("Error! Expected: \([5,4])") }


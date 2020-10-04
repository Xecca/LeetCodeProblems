// Solved by Xecca

//506. Relative Ranks
//Сomplexity: Easy
//https://leetcode.com/problems/relative-ranks/

//----------------------------------------------------
//Runtime: 76 ms, faster than 100.00% of Swift online submissions for Relative Ranks.
//Memory Usage: 14.6 MB, less than 100.00% of Swift online submissions for Relative Ranks.
//----------------------------------------------------

//Given scores of N athletes, find their relative ranks and the people with the top three highest scores, who will be awarded medals: "Gold Medal", "Silver Medal" and "Bronze Medal".

//Note:
//N is a positive integer and won't exceed 10,000.
//All the scores of athletes are guaranteed to be unique.
//----------------------------------------------------

func findRelativeRanks(_ nums: [Int]) -> [String] {
    let newRank = nums.sorted(by: >)
    var relativeRank = [String]()
    var dictWithRank = [Int : String]()
    
    for (i, num) in newRank.enumerated() {
        if i == 0 {
            dictWithRank.updateValue("Gold Medal", forKey: num)
        } else if i == 1 {
            dictWithRank.updateValue("Silver Medal", forKey: num)
        } else if i == 2 {
            dictWithRank.updateValue("Bronze Medal", forKey: num)
        } else {
            dictWithRank.updateValue(String(i + 1), forKey: num)
        }
    }
    
    for rank in nums {
        relativeRank.append(dictWithRank[rank] ?? "0")
    }
    
    return relativeRank
}

//Input:
let nums = [5, 4, 3, 2, 1]
//Output: ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]
//Explanation: The first three athletes got the top three highest scores, so they got "Gold Medal", "Silver Medal" and "Bronze Medal".
//For the left two athletes, you just need to output their relative ranks according to their scores.

findRelativeRanks(nums)


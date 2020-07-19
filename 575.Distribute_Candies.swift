//575. Distribute Candies
//Сomplexity: Easy
//https://leetcode.com/problems/distribute-candies/

//----------------------------------------------------
//Runtime: 1160 ms, faster than 100.00% of Swift online submissions for Distribute Candies.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Distribute Candies.
//----------------------------------------------------

//Given an integer array with even length, where different numbers in this array represent different kinds of candies. Each number means one candy of the corresponding kind. You need to distribute these candies equally in number to brother and sister. Return the maximum number of kinds of candies the sister could gain.

//----------------------------------------------------

func distributeCandies(_ candies: [Int]) -> Int {
    let countCandies = candies.count
    let countUniqueCandies = Set(candies).count
    var sistersCandies = 0
    
    if (countCandies % 2 == 0 && Double(countCandies) / Double(countUniqueCandies) == 2.0) || countUniqueCandies > countCandies / 2 {
        sistersCandies = countCandies / 2
    } else {
        if countCandies / 2 > countUniqueCandies {
            sistersCandies = countUniqueCandies
        } else {
            sistersCandies = countCandies / countUniqueCandies
        }
    }
    
    return sistersCandies
}

//Input:
let candies = [0,0,14,0,10,0,0,0]
//Output: 3
//Explanation:
//There are three different kinds of candies (1, 2 and 3), and two candies for each kind.
//Optimal distribution: The sister has candies [1,2,3] and the brother has candies [1,2,3], too.
//The sister has three different kinds of candies.

distributeCandies(candies)


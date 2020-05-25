//1431. Kids With the Greatest Number of Candies
//https://leetcode.com/problems/kids-with-the-greatest-number-of-candies/
//Runtime: 12 ms, faster than 97.65% of Swift online submissions for Kids With the Greatest Number of Candies.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Kids With the Greatest Number of Candies.
//----------------------------------------------------

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let max = candies.max()
    var finalCandies: [Bool] = []
    
    for kid in candies {
        if (kid + extraCandies) >= max! {
            finalCandies.append(true)
        } else {
            finalCandies.append(false)
        }
    }
    
    return finalCandies
}

let candies = [2,3,5,1,3]
let extraCandies = 3
//Output: [true,true,true,false,true]

print(kidsWithCandies(candies, extraCandies))

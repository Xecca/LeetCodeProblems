//771. Jewels and Stones
//https://leetcode.com/problems/jewels-and-stones/
//Runtime: 4 ms, faster than 97.88% of Swift online submissions for Jewels and Stones.
//Memory Usage: 21 MB, less than 7.69% of Swift online submissions for Jewels and Stones.
//----------------------------------------------------

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    var count = 0
    
    for j in J {
        for s in S {
            if j == s {
                count += 1
            }
        }
    }
    return count
}

//Input:
let J = "aA", S = "aAAbbbb"
//Output: 3


numJewelsInStones(J, S)

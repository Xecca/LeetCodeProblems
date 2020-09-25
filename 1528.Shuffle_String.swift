// Solved by Xecca

//1528. Shuffle String
//Сomplexity: Easy
//https://leetcode.com/problems/shuffle-string/

//----------------------------------------------------
//Runtime: 32 ms, faster than 99.35% of Swift online submissions for Shuffle String.
//Memory Usage: 21.2 MB, less than 72.64% of Swift online submissions for Shuffle String.
//----------------------------------------------------

//Given a string s and an integer array indices of the same length.
//
//The string s will be shuffled such that the character at the ith position moves to indices[i] in the shuffled string.
//
//Return the shuffled string.

//----------------------------------------------------

func restoreString(_ s: String, _ indices: [Int]) -> String {
    var restStr: [Character] = Array(repeating: "a", count: indices.count)
    
    for (index, char) in s.enumerated() {
        restStr[indices[index]] = char
    }

    return String(restStr)
}

//Input:
let s = "codeleet", indices = [4,5,6,7,0,2,1,3]
//Output: "leetcode"
//Explanation: As shown, "codeleet" becomes "leetcode" after shuffling.

restoreString(s, indices)


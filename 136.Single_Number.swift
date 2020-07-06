//136. Single Number
//Сomplexity: Easy
//https://leetcode.com/problems/single-number/
//----------------------------------------------------
//Runtime: 0
//Memory Usage: 0
//----------------------------------------------------

//Given a non-empty array of integers, every element appears twice except for one. Find that single one.
//
//Note:
//
//Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?

func singleNumber(_ nums: [Int]) -> Int {
    var newDict = [Int: Int]()

    for num in nums {
        newDict.updateValue(0, forKey: num)
    }
    for num in nums {
        if newDict[num] == 1 {
            newDict.updateValue(2, forKey: num)
            continue
        } else {
            newDict.updateValue(1, forKey: num)
        }
    }
    print(newDict)
    if let key = newDict.first(where: { $0.value == 1 })?.key {
        return key
    }

    return 0
}

//Input:
let nums = [1,2,1,2,5,4,4,2]
//Output: 4

singleNumber(nums)






















////-----------------------------------------------------------------------------------------------------
////821. Shortest Distance to a Character
////Сomplexity: Easy
////https://leetcode.com/problems/shortest-distance-to-a-character/
////----------------------------------------------------
////Runtime: 8 ms, faster than 100.00% of Swift online submissions for Available Captures for Rook.
////Memory Usage: 21.1 MB, less than 77.78% of Swift online submissions for Available Captures for Rook.
////----------------------------------------------------
////Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.
////----------------------------------------------------
//
//func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//    let length = S.count
//    var finalMatch = [Int](repeating: Int.max, count: length)
//    finalMatch = findChar(S, C, finalMatch)
//    var i = 0
//
//    while i < length {
//        var diff = [Int]()
//        for ind in finalMatch {
//            diff.append(<#T##newElement: Int##Int#>)
//        }
//    }
//
//
//    print(finalMatch)
//
//    return [0]
//}
//
//func findChar(_ str: String, _ char: Character, _ finalMatch: [Int]) -> [Int] {
//    var i = 0
//    var charPosition = finalMatch
//
//    for letter in str {
//        if letter == char {
//            charPosition[i] = 0
//        }
//        i += 1
//    }
//
//    return charPosition
//}
//
////Input:
//let S = "loveleetcode", C: Character = "e"
////Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
//
//shortestToChar(S, C)


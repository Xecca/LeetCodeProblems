//942. DI String Match
//Сomplexity: Easy
//https://leetcode.com/problems/di-string-match/
//----------------------------------------------------
//Runtime: 44 ms, faster than 100.00% of Swift online submissions for DI String Match.
//Memory Usage: 21.5 MB, less than 91.67% of Swift online submissions for DI String Match.
//----------------------------------------------------

//Given a string S that only contains "I" (increase) or "D" (decrease), let N = S.length.
//
//Return any permutation A of [0, 1, ..., N] such that for all i = 0, ..., N-1:
//
//If S[i] == "I", then A[i] < A[i+1]
//If S[i] == "D", then A[i] > A[i+1]
//Note:
//
//1 <= S.length <= 10000
//S only contains characters "I" or "D".

//----------------------------------------------------

func diStringMatch(_ S: String) -> [Int] {
//    let length = S.count
    var newArr = [Int]()
    var maxVal = S.count
    var minVal = 0

    for sign in S {
        if sign == "I" {
            newArr.append(minVal)
            minVal += 1
        } else {
            newArr.append(maxVal)
            maxVal -= 1
        }
    }
    
//    if newArr.count == S.count {
        newArr.append(minVal)
//    }
    
    return newArr
}

//func removeVar(_ arr: [Int], _ num: Int) -> [Int] {
//    var newArr = arr
//    var i = 0
//
//    while i < arr.count {
//        if newArr[i] == num {
//            newArr.remove(at: i)
//            break
//        }
//        i += 1
//    }
//
//    return newArr
//}

//Input:
let S = "DDI"
//Output: [0,4,1,3,2]

diStringMatch(S)


//961. N-Repeated Element in Size 2N Array
//https://leetcode.com/problems/n-repeated-element-in-size-2n-array
//Runtime: 236 ms, faster than 99.10% of Swift online submissions for N-Repeated Element in Size 2N Array.
//Memory Usage: 21.3 MB, less than 25.00% of Swift online submissions for N-Repeated Element in Size 2N Array.
////----------------------------------------------------
//In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.
//
//Return the element repeated N times.
//----------------------------------------------------

func repeatedNTimes(_ A: [Int]) -> Int {
    let sizeArr = A.count
    let uniqueElem = (sizeArr / 2) + 1
    var i = 0
    var countAppears = 1
    var j = 0

    while i < sizeArr {
        countAppears = 1
        j = 0
        while j < sizeArr {
            if A[j] == A[i] {
                countAppears += 1
            }
            j += 1
        }
        if countAppears == uniqueElem {
            return A[i]
        }
        i += 1
    }

    return 0
}

//func repeatedNTimes(_ A: [Int]) -> Int {
//    let uniqueElem = (A.count / 2) + 1
//    var countAppears = 1
//
//    for i in A {
//        countAppears = 1
//        for j in A {
//            if i == j {
//                countAppears += 1
//            }
//        }
//        if countAppears == uniqueElem {
//            return i
//        }
//    }
//
//    return 0
//}


//Input:
let inp = [2,1,2,5,3,2]
//Output: 2

repeatedNTimes(inp)


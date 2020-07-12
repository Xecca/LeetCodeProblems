//1502. Can Make Arithmetic Progression From Sequence
//Сomplexity: Easy
//https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/
//----------------------------------------------------
//Runtime: 40 ms, faster than 76.67% of Swift online submissions for Can Make Arithmetic Progression From Sequence.
//Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Can Make Arithmetic Progression From Sequence.
//----------------------------------------------------

//Given an array of numbers arr. A sequence of numbers is called an arithmetic progression if the difference between any two consecutive elements is the same.
//
//Return true if the array can be rearranged to form an arithmetic progression, otherwise, return false.

//----------------------------------------------------

func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
    var i = 0
    let length = arr.count
    let sortArr = arr.sorted()
    let denominatorOfProgression = sortArr[i] - sortArr[i + 1]
    
    while i < length {
        if i + 1 < length {
            if sortArr[i] - sortArr[i + 1] != denominatorOfProgression {
                return false
            }
        }
        i += 1
    }
    
    return true
}

//Input:
let arr = [3,5,1]
//Output: true
//Explanation: We can reorder the elements as [1,3,5] or [5,3,1] with differences 2 and -2 respectively, between each consecutive elements.

canMakeArithmeticProgression(arr)


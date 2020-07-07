//1394. Find Lucky Integer in an Array
//Сomplexity: Easy
//https://leetcode.com/problems/find-lucky-integer-in-an-array/
//----------------------------------------------------
//Runtime: 36 ms, faster than 92.54% of Swift online submissions for Find Lucky Integer in an Array.
//Memory Usage: 21.6 MB, less than 38.30% of Swift online submissions for Find Lucky Integer in an Array.
//----------------------------------------------------

//Given an array of integers arr, a lucky integer is an integer which has a frequency in the array equal to its value.
//
//Return a lucky integer in the array. If there are multiple lucky integers return the largest of them. If there is no lucky integer return -1.

func findLucky(_ arr: [Int]) -> Int {
    var currentVal = 0
    var dictNums = [Int: Int]()
    let setArrUniq = Set(arr)
    var maxLuckyVal = 0
    
    for num in setArrUniq {
        dictNums.updateValue(0, forKey: num)
    }
    for num in arr {
        currentVal = dictNums[num]! + 1
        dictNums.updateValue(currentVal, forKey: num)
        print(currentVal)
    }
    for num in dictNums {
        if num.key == num.value {
            if maxLuckyVal < num.value {
                maxLuckyVal = num.value
            }
        }
    }
    if maxLuckyVal > 0 {
        return maxLuckyVal
    }
    
    return -1
}

//Input:
let arr = [1,2,2,3,3,3]
//Output: 3
//Explanation: 1, 2 and 3 are all lucky numbers, return the largest of them.

findLucky(arr)


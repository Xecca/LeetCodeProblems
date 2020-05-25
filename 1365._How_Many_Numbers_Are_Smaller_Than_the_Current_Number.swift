//1365. How Many Numbers Are Smaller Than the Current Number
//https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/
//Runtime: 288 ms, faster than 37.22% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.
//Memory Usage: 21.2 MB, less than 100.00% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.
//----------------------------------------------------

func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var countNums: [Int] = []
    let newNums = nums.sorted()
    var i = 0
    
    for bigNums in nums {
        i = 0
        for currentNum in newNums {
            if bigNums > currentNum {
                i += 1
            } else {
                break
            }
        }
        countNums.append(i)
    }
    return countNums
}

let nums = [8,1,2,2,3]
//Output: [4,0,1,1,3]

smallerNumbersThanCurrent(nums)


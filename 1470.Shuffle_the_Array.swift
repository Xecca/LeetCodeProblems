//1470. Shuffle the Array
//https://leetcode.com/problems/shuffle-the-array/
//----------------------------------------------------
//Runtime: 40 ms, faster than 97.78% of Swift online submissions for Shuffle the Array.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Shuffle the Array.
//----------------------------------------------------
//Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
//
//Return the array in the form [x1,y1,x2,y2,...,xn,yn].
//----------------------------------------------------

func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    var newArr = [Int]()
    var i = 0
    let length = nums.count / 2
    
    while i < length {
        newArr.append(nums[i])
        newArr.append(nums[i + n])
        i += 1
    }
    
    return newArr
}

//Input:
let nums = [2,5,1,3,4,7], n = 3
//Output: [2,3,5,4,1,7]
//Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].

shuffle(nums, n)


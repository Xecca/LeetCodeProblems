//1313. Decompress Run-Length Encoded List
//https://leetcode.com/problems/decompress-run-length-encoded-list/
//Runtime: 52 ms, faster than 97.42% of Swift online submissions for Decompress Run-Length Encoded List.
//Memory Usage: 21.5 MB, less than 100.00% of Swift online submissions for Decompress Run-Length Encoded List.
//----------------------------------------------------

func decompressRLElist(_ nums: [Int]) -> [Int] {
    var newNums: [Int] = []
    var i = 0
    let length = nums.count
    var j = 0
    
    while i < length {
        j = 0
        while j < nums[i] {
            newNums.append(nums[i + 1])
            j += 1
        }
        i += 2
    }
    
    return newNums
}

//Input:
let nums = [1,2,3,4]

//Output: [2,4,4,4]

decompressRLElist(nums)


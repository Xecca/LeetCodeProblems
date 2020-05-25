//1295. Find Numbers with Even Number of Digits
//https://leetcode.com/problems/decompress-run-length-encoded-list/
//Runtime: 36 ms, faster than 94.58% of Swift online submissions for Find Numbers with Even Number of Digits.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Find Numbers with Even Number of Digits.
//----------------------------------------------------

func findNumbers(_ nums: [Int]) -> Int {
    var count = 0
    var strNum = ""

    for num in nums {
        strNum = (String(num))
        if strNum.count % 2 == 0 {
            count += 1
        }
    }

    return count
}

//Input:
let nums = [12,345,2,6,7896]

//Output: 2

findNumbers(nums)


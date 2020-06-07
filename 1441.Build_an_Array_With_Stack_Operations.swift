//1441. Build an Array With Stack Operations
//https://leetcode.com/problems/build-an-array-with-stack-operations/
//----------------------------------------------------
//Runtime: 8 ms, faster than 95.29% of Swift online submissions for Build an Array With Stack Operations.
//Memory Usage: 20.8 MB, less than 68.23% of Swift online submissions for Build an Array With Stack Operations.
//----------------------------------------------------
//Given an array target and an integer n. In each iteration, you will read a number from  list = {1,2,3..., n}.
//
//Build the target array using the following operations:
//
//Push: Read a new element from the beginning list, and push it in the array.
//Pop: delete the last element of the array.
//If the target array is already built, stop reading more elements.
//You are guaranteed that the target array is strictly increasing, only containing numbers between 1 to n inclusive.
//
//Return the operations to build the target array.
//
//You are guaranteed that the answer is unique.
//----------------------------------------------------

func buildArray(_ target: [Int], _ n: Int) -> [String] {
    var finalStr = [String]()
    let list = [Int](1...n)
    var i = 0
    var j = 0
    
    while i < n && i < target.count {
        finalStr.append("Push")
        if target[i] == list[j] {
            i += 1
            j += 1
        } else {
            finalStr.append("Pop")
            j += 1
        }
    }
    
    return finalStr
}

//Input:
let target = [2,3,4], n = 4
//Output: ["Push","Pop","Push","Push","Push"]

buildArray(target, n)


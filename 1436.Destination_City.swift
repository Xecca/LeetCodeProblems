//1436. Destination City
//https://leetcode.com/problems/destination-city/
//Runtime: 60 ms, faster than 78.21% of Swift online submissions for Destination City.
//Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Destination City.
//----------------------------------------------------
//Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).
//
//The binary search tree is guaranteed to have unique values.
//----------------------------------------------------

func destCity(_ paths: [[String]]) -> String {
    var i = 0
    var j = 0
    let length = paths.count
    
    while i < length {
        if paths[j][1] == paths[i][0] {
            i = 0
            j += 1
        } else {
            i += 1
        }
        if i == length - 1 && paths[j][1] != paths[i][0] {
            return paths[j][1]
        }
    }
    return paths[j][1]
}

//Input:
let paths = [["London","New York"],["Lima","Sao Paulo"],["New York","Lima"]]
//Output: "Sao Paulo"

destCity(paths)


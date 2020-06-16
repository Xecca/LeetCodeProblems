//1122. Relative Sort Array
//Сomplexity: Easy
//https://leetcode.com/problems/relative-sort-array/
//----------------------------------------------------
//Runtime: 16 ms, faster than 77.27% of Swift online submissions for Relative Sort Array.
//Memory Usage: 21.5 MB, less than 40.32% of Swift online submissions for Relative Sort Array.
//----------------------------------------------------
//Given two arrays arr1 and arr2, the elements of arr2 are distinct, and all elements in arr2 are also in arr1.
//
//Sort the elements of arr1 such that the relative ordering of items in arr1 are the same as in arr2.  Elements that don't appear in arr2 should be placed at the end of arr1 in ascending order.
//----------------------------------------------------

func relativeSortArray(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
    var newArr = [Int]()
    var dubleArr1 = arr1.sorted()
    var i = 0
    var j = 0
    
    while j < arr2.count {
        while i < dubleArr1.count {
            if arr2[j] == dubleArr1[i] {
                newArr.append(arr2[j])
                dubleArr1.remove(at: i)
            } else {
                i += 1
            }
        }
        i = 0
        j += 1
    }
    newArr.append(contentsOf: dubleArr1)
    
    return newArr
}

//Input:
let arr1 = [2,3,1,3,2,4,6,7,9,2,19], arr2 = [2,1,4,3,9,6]
//Output: [2,2,2,1,4,3,3,9,6,7,19]

relativeSortArray(arr1, arr2)


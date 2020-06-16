//1385. Find the Distance Value Between Two Arrays
//Сomplexity: Easy
//https://leetcode.com/problems/find-the-distance-value-between-two-arrays/
//----------------------------------------------------
//Runtime: 60 ms, faster than 100.00% of Swift online submissions for Find the Distance Value Between Two Arrays.
//Memory Usage: 21 MB, less than 60.00% of Swift online submissions for Find the Distance Value Between Two Arrays.
//----------------------------------------------------
//Given two integer arrays arr1 and arr2, and the integer d, return the distance value between the two arrays.
//
//The distance value is defined as the number of elements arr1[i] such that there is not any element arr2[j] where |arr1[i]-arr2[j]| <= d.
//----------------------------------------------------

func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
    var i = 0
    var j = 0
    var distance = 0
    var diff = 0
    
    while i < arr1.count {
        while j < arr2.count {
            if abs(arr1[i] - arr2[j]) <= d {
                diff += 1
                break
            }
            j += 1
        }
        if diff == 0 {
            distance += 1
        }
        j = 0
        i += 1
        diff = 0
    }
    
    return distance
}

//Input:
let arr1 = [4,5,8], arr2 = [10,9,1,8], d = 2
//Output: 2
//Explanation:
//For arr1[0]=4 we have:
//|4-10|=6 > d=2
//|4-9|=5 > d=2
//|4-1|=3 > d=2
//|4-8|=4 > d=2
//For arr1[1]=5 we have:
//|5-10|=5 > d=2
//|5-9|=4 > d=2
//|5-1|=4 > d=2
//|5-8|=3 > d=2
//For arr1[2]=8 we have:
//|8-10|=2 <= d=2
//|8-9|=1 <= d=2
//|8-1|=7 > d=2
//|8-8|=0 <= d=2

findTheDistanceValue(arr1, arr2, d)


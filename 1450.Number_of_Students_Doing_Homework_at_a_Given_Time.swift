//1450. Number of Students Doing Homework at a Given Time
//https://leetcode.com/problems/number-of-students-doing-homework-at-a-given-time/
//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Number of Students Doing Homework at a Given Time.
//Memory Usage: 20.9 MB, less than 100.00% of Swift online submissions for Number of Students Doing Homework at a Given Time.
//----------------------------------------------------
//Given two integer arrays startTime and endTime and given an integer queryTime.
//
//The ith student started doing their homework at the time startTime[i] and finished it at time endTime[i].
//
//Return the number of students doing their homework at time queryTime. More formally, return the number of students where queryTime lays in the interval [startTime[i], endTime[i]] inclusive.
//
//
//
//Example 1:
//
//Input: startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
//Output: 1
//Explanation: We have 3 students where:
//The first student started doing homework at time 1 and finished at time 3 and wasn't doing anything at time 4.
//The second student started doing homework at time 2 and finished at time 2 and also wasn't doing anything at time 4.
//The third student started doing homework at time 3 and finished at time 7 and was the only student doing homework at time 4.
//----------------------------------------------------

func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var count = 0
    var i = 0
    let length = endTime.count
    
    while i < length {
        if startTime[i] <= queryTime && endTime[i] >= queryTime {
        count += 1
        }
        i += 1
    }

    return count
}

//Input:
let startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
//Output: 1

busyStudent(startTime, endTime, queryTime)


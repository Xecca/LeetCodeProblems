// Solved by Xecca

import Foundation

//1360. Number of Days Between Two Dates
//Difficult: Easy
//https://leetcode.com/problems/number-of-days-between-two-dates/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Number of Days Between Two Dates.
//Memory Usage: 14.3 MB, less than 100.00% of Swift online submissions for Number of Days Between Two Dates.
    
//

//Write a program to count the number of days between two dates.
//
//The two dates are given as strings, their format is YYYY-MM-DD as shown in the examples.
//
//Constraints:
//
//The given dates are valid dates between the years 1971 and 2100.
//

func daysBetweenDates(_ date1: String, _ date2: String) -> Int {
    
    let daysDate1 = calcDaysInYear(dateToIntArray(date1)[0]) + calcDaysInMonth(dateToIntArray(date1)[1], isLeapYear(dateToIntArray(date1)[0]))  + dateToIntArray(date1)[2]
    let daysDate2 = calcDaysInYear(dateToIntArray(date2)[0]) + calcDaysInMonth(dateToIntArray(date2)[1], isLeapYear(dateToIntArray(date2)[0]))  + dateToIntArray(date2)[2]
    
    return abs(daysDate1 - daysDate2)
}

func dateToIntArray(_ date: String) -> [Int] {
    let arrDate = date.split(separator: "-")
    var dateNum = Array(repeating: 0, count: 3)
    var i = 0
    
    while i < 3 {
        dateNum[i] = (Int(arrDate[i]) ?? 0)
        i += 1
    }
    
    return dateNum
}

func calcDaysInMonth(_ date: Int, _ isLeapYear: Bool) -> Int {
    let daysInMonth = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var days = 0
    
    for month in 1..<date {
        if month == 2 && isLeapYear == true {
            days += 29
        } else {
            days += daysInMonth[month]
        }
    }
    
    return days
}

func calcDaysInYear(_ date: Int) -> Int {
    var daysDate = 0
    
    for year in 1971..<date {
        if (year % 100 == 0 && year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
            daysDate += 366
        } else {
            daysDate += 365
        }
    }
    
    return daysDate
}

func isLeapYear(_ year: Int) -> Bool {
    if (year % 100 == 0 && year % 400 == 0) || (year % 4 == 0 && year % 100 != 0) {
        return true
    }
    return false
}

//Example 1:
//
//Input: date1 = "2019-06-29", date2 = "2019-06-30"
//Output: 1
//Example 2:
//
//Input: date1 = "2020-01-15", date2 = "2019-12-31"
//Output: 15

//Test cases:

var input = [2,2,3,1]
let answer = 1

if daysBetweenDates("2020-01-15", "2019-12-31") == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


//1185. Day of the Week
//Сomplexity: Easy
//https://leetcode.com/problems/day-of-the-week/
//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Day of the Week.
//Memory Usage: 20.8 MB, less than 88.89% of Swift online submissions for Day of the Week.
//----------------------------------------------------

//Given a date, return the corresponding day of the week for that date.
//
//The input is given as three integers representing the day, month and year respectively.
//
//Return the answer as one of the following values {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}.

//----------------------------------------------------

//code of month:
//1 — January, October;
//2 — May;
//3 — August;
//4 — February, March, November;
//5 — June;
//6 — December, September;
//0 — April, July.

// day of week = (day + code of month + code of year) % 7
// code of year = (code of century + last two digits of year + last two digits of year / 4) % 7
// code of century = (6, 4, 2, 0)

// for example:
//00хх: 6;
//01хх: 4;
//02хх: 2;
//...
//17хх: 4;
//18хх: 2;
//19хх: 0;
//20хх: 6;
//21хх: 4 and etc.

func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
    let codesOfTheMonth = [1, 4, 4, 0, 2, 5, 0, 3, 6, 1, 4, 6]
    let dayOfWeek = ["Saturday", "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
    let codeOfMonth = codesOfTheMonth[month - 1]
    let firstTwoDigOfYear = getFirstTwoDigitsOfYear(year)
    let lastTwoDigOfYear = getLastTwoDigitsOfYear(year)
    let codeOfCentury = getCenturyCode(firstTwoDigOfYear)
    let codeOfYear = (codeOfCentury + lastTwoDigOfYear + lastTwoDigOfYear / 4) % 7

    if day == 29 && month == 2 { // year % 400 == 0 || (year % 4 == 0 && year % 100 != 0)
         return dayOfWeek[(day - 1 + codeOfMonth + codeOfYear) % 7]
    }
    return dayOfWeek[(day + codeOfMonth + codeOfYear) % 7]
}

func getCenturyCode(_ year: Int) -> Int { // get two first digits of year. For example: 1689 -> 16
    let centuryCode = [6, 4, 2, 0]
    var startCentury = 0
    var i = 0

    while i < year {
        if startCentury == 3 {
            startCentury = 0
        } else {
            startCentury += 1
        }
        i += 1
    }

    return centuryCode[startCentury]
}

func getFirstTwoDigitsOfYear(_ year: Int) -> Int {
    let yearInString = String(year)

    if yearInString.count == 4 {
        return (Int(String(yearInString[String.Index(utf16Offset: 0, in: yearInString)]))! * 10) + Int(String(yearInString[String.Index(utf16Offset: 1, in: yearInString)]))!
    }
    return Int(String(yearInString[String.Index(utf16Offset: 0, in: yearInString)]))!
}

func getLastTwoDigitsOfYear(_ year: Int) -> Int {
    let yearInString = String(year)

    if yearInString.count == 4 {
        return (Int(String(yearInString[String.Index(utf16Offset: 2, in: yearInString)]))! * 10) + Int(String(yearInString[String.Index(utf16Offset: 3, in: yearInString)]))!
    }
    return (Int(String(yearInString[String.Index(utf16Offset: 1, in: yearInString)]))! * 10) + Int(String(yearInString[String.Index(utf16Offset: 2, in: yearInString)]))!
}

//Input:
let day = 29, month = 2, year = 2016
//Output: "Monday"

dayOfTheWeek(day, month, year)


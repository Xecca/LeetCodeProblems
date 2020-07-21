//1507. Reformat Date
//Сomplexity: Easy
//https://leetcode.com/problems/reformat-date/

//----------------------------------------------------
//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Reformat Date.
//Memory Usage: 21.3 MB, less than 100.00% of Swift online submissions for Reformat Date.
//----------------------------------------------------

//Given a date string in the form Day Month Year, where:
//
//Day is in the set {"1st", "2nd", "3rd", "4th", ..., "30th", "31st"}.
//Month is in the set {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}.
//Year is in the range [1900, 2100].
//Convert the date string to the format YYYY-MM-DD, where:
//
//YYYY denotes the 4 digit year.
//MM denotes the 2 digit month.
//DD denotes the 2 digit day.

//----------------------------------------------------

func reformatDate(_ date: String) -> String {
    let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
    var splitedDate = date.split(separator: " ")
    var indexMonth = months.firstIndex(of: String(splitedDate[1]))! + 1
    // cut day
    splitedDate[0].removeLast()
    splitedDate[0].removeLast()

    let monthInStr = convertMonthAndDateInString(indexMonth)
    let dateInStr = convertMonthAndDateInString(Int(String(splitedDate[0]))!)

    return "\(splitedDate[2])-\(monthInStr)-\(dateInStr)"
}

func convertMonthAndDateInString(_ num: Int) -> String {
    var newStr = ""
    
    if num > 9 {
        newStr = String(num)
    } else {
        newStr = "0" + String(num)
    }
    
    return newStr
}

//Input:
let date = "20th Oct 2052"
//Output: "2052-10-20"

reformatDate(date)


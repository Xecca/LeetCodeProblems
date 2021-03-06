// Solved by Xecca

//860. Lemonade Change
//Сomplexity: Easy
//https://leetcode.com/problems/greatest-common-divisor-of-strings/

//----------------------------------------------------
//Runtime: 92 ms, faster than 100.00% of Swift online submissions for Lemonade Change.
//Memory Usage: 14.3 MB, less than 100.00% of Swift online submissions for Lemonade Change.
//----------------------------------------------------

//At a lemonade stand, each lemonade costs $5.
//
//Customers are standing in a queue to buy from you, and order one at a time (in the order specified by bills).
//
//Each customer will only buy one lemonade and pay with either a $5, $10, or $20 bill.  You must provide the correct change to each customer, so that the net transaction is that the customer pays $5.
//
//Note that you don't have any change in hand at first.
//
//Return true if and only if you can provide every customer with correct change.

//----------------------------------------------------

//vesion 2.0
func lemonadeChange(_ bills: [Int]) -> Bool {
    var five = 0
    var ten = 0

    for bill in bills {
        if bill == 5 {
            five += 1
        } else if bill == 10 {
            if five == 0 {
                return false
            } else {
                five -= 1
                ten += 1
            }
        } else if bill == 20 {
            if (ten >= 1 && five >= 1) {
                five -= 1
                ten -= 1
            } else if five >= 3 {
                five -= 3
            } else {
                return false
            }
        }
    }

    return true
}

//func lemonadeChange(_ bills: [Int]) -> Bool {
//    var change = [5 : 0, 10 : 0, 20 : 0]
//
//    for bill in bills {
//        if bill == 5 {
//            change.updateValue((countBillInChange(5, change) + 1), forKey: bill)
//        } else if bill == 10 {
//            if change[5] == 0 {
//                return false
//            } else {
//                change.updateValue((countBillInChange(5, change) - 1), forKey: 5)
//                change.updateValue((countBillInChange(bill, change) + 1), forKey: bill)
//            }
//        } else if bill == 20 {
//            if (change[10]! >= 1 && change[5]! >= 1) {
//                change.updateValue((countBillInChange(bill, change) + 1), forKey: bill)
//                change.updateValue((countBillInChange(5, change) - 1), forKey: 5)
//                change.updateValue((countBillInChange(10, change) - 1), forKey: 10)
//            } else if change[5]! >= 3 {
//                change.updateValue((countBillInChange(bill, change) + 1), forKey: bill)
//                change.updateValue((countBillInChange(5, change) - 3), forKey: 5)
//            } else {
//                return false
//            }
//        }
//    }
//
//    return true
//}
//
//func countBillInChange(_ bill: Int, _ change: [Int : Int]) -> Int {
//    let currentFiveBillCount = change[bill]!
//
//    return currentFiveBillCount
//}

//Example: 1
//Input:
//let bills = [5,5,5,10,20]
//Output: true
//Explanation:
//From the first 3 customers, we collect three $5 bills in order.
//From the fourth customer, we collect a $10 bill and give back a $5.
//From the fifth customer, we give a $10 bill and a $5 bill.
//Since all customers got correct change, we output true.
//Example: 4
//Input:
let bills = [5,5,10,10,20]
//Output: false
//Explanation:
//From the first two customers in order, we collect two $5 bills.
//For the next two customers in order, we collect a $10 bill and give back a $5 bill.
//For the last customer, we can't give change of $15 back because we only have two $10 bills.
//Since not every customer received correct change, the answer is false.

lemonadeChange(bills)


// Solved by Xecca

//599. Minimum Index Sum of Two Lists
//Сomplexity: Easy
//https://leetcode.com/problems/minimum-index-sum-of-two-lists/

//----------------------------------------------------
//Runtime: 652 ms, faster than 11.54% of Swift online submissions for Minimum Index Sum of Two Lists.
//Memory Usage: 14.4 MB, less than 92.31% of Swift online submissions for Minimum Index Sum of Two Lists.
//----------------------------------------------------

//Suppose Andy and Doris want to choose a restaurant for dinner, and they both have a list of favorite restaurants represented by strings.
//
//You need to help them find out their common interest with the least list index sum. If there is a choice tie between answers, output all of them with no order requirement. You could assume there always exists an answer.

//----------------------------------------------------

func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
    var i1 = 0
    var i2 = 0
    var matchedRest: [String : Int] = [:]
    var finalString = [String]()
    
    while i1 < list1.count {
        while i2 < list2.count {
            if list1[i1] == list2[i2] {
                matchedRest.updateValue(i1 + i2, forKey: list1[i1])
                break
            }
            i2 += 1
        }
        i2 = 0
        i1 += 1
    }
    
    let minSum = matchedRest.min { a, b in a.value < b.value }
    
    for pair in matchedRest {
        if pair.value == minSum!.value {
            finalString.append(pair.key)
        }
    }
    
    return finalString
}

//Input:
//let list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["Piatti","The Grill at Torrey Pines","Hungry Hunter Steakhouse","Shogun"]
//Output: ["Shogun"]
//Explanation: The only restaurant they both like is "Shogun".
//Example 2:
//Input:
//let list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KFC","Shogun","Burger King"]
//Output: ["Shogun"]
//Explanation: The restaurant they both like and have the least index sum is "Shogun" with index sum 1 (0+1).
//Example 4:
//Input:
let list1 = ["Shogun","Tapioca Express","Burger King","KFC"], list2 = ["KNN","KFC","Burger King","Tapioca Express","Shogun"]
//Output: ["KFC","Burger King","Tapioca Express","Shogun"]

findRestaurant(list1, list2)


// Solved by Xecca

//1710. Maximum Units on a Truck
//Difficult: Easy
//https://leetcode.com/problems/maximum-units-on-a-truck/

//Runtime: 168 ms, faster than 99.19% of Swift online submissions for Maximum Units on a Truck.
//Memory Usage: Memory Usage: 14.3 MB, less than 56.10% of Swift online submissions for Maximum Units on a Truck.

//

//You are assigned to put some amount of boxes onto one truck. You are given a 2D array boxTypes, where boxTypes[i] = [numberOfBoxesi, numberOfUnitsPerBoxi]:
//
//numberOfBoxesi is the number of boxes of type i.
//numberOfUnitsPerBoxi is the number of units in each box of the type i.
//You are also given an integer truckSize, which is the maximum number of boxes that can be put on the truck. You can choose any boxes to put on the truck as long as the number of boxes does not exceed truckSize.
//
//Return the maximum total number of units that can be put on the truck.
//
//Constraints:
//
//1 <= boxTypes.length <= 1000
//1 <= numberOfBoxesi, numberOfUnitsPerBoxi <= 1000
//1 <= truckSize <= 10^6

//

func maximumUnits(_ boxTypes: [[Int]], _ truckSize: Int) -> Int {
    var sumOfBoxes = 0
    var countOfUnits = 0
    
    for box in boxTypes {
        sumOfBoxes += box[0]
    }
    if sumOfBoxes <= truckSize {
        for box in boxTypes {
            countOfUnits += box[1] * box[0]
        }
        return countOfUnits
    }
    
    let boxSortedByUnits = boxTypes.sorted(by: { $0[1] > $1[1] })
    var boxLimit = truckSize
    var i = 0
    let size = boxTypes.count
    
    while i < size {
        if boxSortedByUnits[i][0] >= boxLimit {
            return countOfUnits + boxLimit * boxSortedByUnits[i][1]
        }
        countOfUnits += boxSortedByUnits[i][0] * boxSortedByUnits[i][1]
        boxLimit -= boxSortedByUnits[i][0]
        i += 1
    }
    
    return countOfUnits
}

//Example 1:
//
//Input: boxTypes = [[1,3],[2,2],[3,1]], truckSize = 4
//Output: 8
//Explanation: There are:
//- 1 box of the first type that contains 3 units.
//- 2 boxes of the second type that contain 2 units each.
//- 3 boxes of the third type that contain 1 unit each.
//You can take all the boxes of the first and second types, and one box of the third type.
//The total number of units will be = (1 * 3) + (2 * 2) + (1 * 1) = 8.
//Example 2:
//
//Input: boxTypes = [[5,10],[2,5],[4,7],[3,9]], truckSize = 10
//Output: 91

//Test cases:

if maximumUnits([[5,10],[2,5],[4,7],[3,9]], 10) == 91 { print("Correct!") } else { print("Error! Expected: \(91)") }


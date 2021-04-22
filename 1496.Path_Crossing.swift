// Solved by Xecca

//1496. Path Crossing
//Difficult: Easy
//https://leetcode.com/problems/path-crossing/

//Runtime: 20 ms, faster than 10.53% of Swift online submissions for Path Crossing.
//Memory Usage: 14.9 MB, less than 15.79% of Swift online submissions for Path Crossing.

//

//Given a string path, where path[i] = 'N', 'S', 'E' or 'W', each representing moving one unit north, south, east, or west, respectively. You start at the origin (0, 0) on a 2D plane and walk on the path specified by path.
//
//Return True if the path crosses itself at any point, that is, if at any time you are on a location you've previously visited. Return False otherwise.

//Constraints:
//
//1 <= path.length <= 10^4
//path will only consist of characters in {'N', 'S', 'E', 'W}

//

func isPathCrossing(_ path: String) -> Bool {
    
    var coordinates: [[Int]] = []
    var currCoor = [0, 0]
    coordinates.append(currCoor)
    for dir in path {
        currCoor = coordinates[coordinates.count - 1]
        
        switch dir {
        case "N":
            currCoor[1] += 1
        case "S":
            currCoor[1] -= 1
        case "E":
            currCoor[0] += 1
        default:
            currCoor[0] -= 1
        }
        coordinates.append(currCoor)
    }
    
    let checkCrossing = Set(coordinates)
    if checkCrossing.count != path.count + 1 {
        return true
    }
    
    return false
}

//Example 1:
//
//Input: path = "NES"
//Output: false
//Explanation: Notice that the path doesn't cross any point more than once.
//Example 2:
//
//Input: path = "NESWW"
//Output: true
//Explanation: Notice that the path visits the origin twice.

//Test cases:

if isPathCrossing("NES") == false { print("Correct!") } else { print("Error! Expected: \("NES")") }
if isPathCrossing("NESWW") == true { print("Correct!") } else { print("Error! Expected: \("NESWW")") }


// Solved by Xecca

//1184. Distance Between Bus Stops
//Сomplexity: Easy
//https://leetcode.com/problems/distance-between-bus-stops/

//----------------------------------------------------
//Runtime: 20 ms, faster than 100.00% of Swift online submissions for Distance Between Bus Stops.
//Memory Usage: 14 MB, less than 23.08% of Swift online submissions for Distance Between Bus Stops.
//----------------------------------------------------

//A bus has n stops numbered from 0 to n - 1 that form a circle. We know the distance between all pairs of neighboring stops where distance[i] is the distance between the stops number i and (i + 1) % n.
//
//The bus goes along both directions i.e. clockwise and counterclockwise.
//
//Return the shortest distance between the given start and destination stops.
//
//Constraints:
//
//1 <= n <= 10^4
//distance.length == n
//0 <= start, destination < n
//0 <= distance[i] <= 10^4

//----------------------------------------------------

func distanceBetweenBusStops(_ distance: [Int], _ start: Int, _ destination: Int) -> Int {
    var clockwise = 0
    var counterClockwise = 0
    var i = start
    var j = 0

    if destination == start {
        return 0
    } else if start < destination {
        while i < destination {
            clockwise += distance[i]
            i += 1
        }
        j = destination
        while j < distance.count {
            counterClockwise += distance[j]
            j += 1
        }
        j = 0
        while j < start {
            counterClockwise += distance[j]
            j += 1
        }
    } else {
        i = destination
        while i < start {
            counterClockwise += distance[i]
            i += 1
        }
        while j < destination {
            clockwise += distance[j]
            j += 1
        }
        j = start
        while j < distance.count {
            clockwise += distance[j]
            j += 1
        }
    }
    

    if counterClockwise < clockwise {
        return counterClockwise
    }

    return clockwise
}

//Example 1:
//
//Input:
//let distance = [1,2,3,4], start = 0, destination = 1
//Output: 1
//Explanation: Distance between 0 and 1 is 1 or 9, minimum is 1.

//Test cases:
if distanceBetweenBusStops([1,2,3,4], 0, 1) == 1 { print("Correct!") } else { print("Error! Expected: \(1)")}
if distanceBetweenBusStops([8,11,6,7,10,11,2], 0, 3) == 25 { print("Correct!") } else { print("Error! Expected: \(25)")}
if distanceBetweenBusStops([7,10,1,12,11,14,5,0], 7, 2) == 17 { print("Correct!") } else { print("Error! Expected: \(17)")}



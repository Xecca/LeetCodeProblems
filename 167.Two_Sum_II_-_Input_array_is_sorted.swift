// Solved by Xecca

//167. Two Sum II - Input array is sorted
//Сomplexity: Easy
//https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/

//----------------------------------------------------
//Runtime: 28 ms, faster than 88.57% of Swift online submissions for Two Sum II - Input array is sorted.
//Memory Usage: 14.4 MB, less than 27.35% of Swift online submissions for Two Sum II - Input array is sorted.
//----------------------------------------------------

//You are playing the following Nim Game with your friend:
//
//Initially, there is a heap of stones on the table.
//You and your friend will alternate taking turns, and you go first.
//On each turn, the person whose turn it is will remove 1 to 3 stones from the heap.
//The one who removes the last stone is the winner.
//Given n, the number of stones in the heap, return true if you can win the game assuming both you and your friend play optimally, otherwise return false.

//----------------------------------------------------

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    var i = 0
    var j = numbers.count - 1
    
    while i < j {
        if numbers[i] + numbers[j] > target {
            j -= 1
        } else if numbers[i] + numbers[j] < target {
            i += 1
        } else {
            return [i + 1, j + 1]
        }
    }
    
    return [0, 0]
}

//Example 1:
//
//Input:
let numbers = [2,7,11,15], target = 9
//Output: [1,2]
//Explanation: The sum of 2 and 7 is 9. Therefore index1 = 1, index2 = 2.

twoSum(numbers, target)


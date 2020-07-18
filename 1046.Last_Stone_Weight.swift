//1046. Last Stone Weight
//Сomplexity: Easy
//https://leetcode.com/problems/last-stone-weight/

//----------------------------------------------------
//Runtime: 8 ms, faster than 95.06% of Swift online submissions for Last Stone Weight.
//Memory Usage: 21 MB, less than 81.82% of Swift online submissions for Last Stone Weight.
//----------------------------------------------------

//We have a collection of stones, each stone has a positive integer weight.
//
//Each turn, we choose the two heaviest stones and smash them together.  Suppose the stones have weights x and y with x <= y.  The result of this smash is:
//
//If x == y, both stones are totally destroyed;
//If x != y, the stone of weight x is totally destroyed, and the stone of weight y has new weight y-x.
//At the end, there is at most 1 stone left.  Return the weight of this stone (or 0 if there are no stones left.)

//----------------------------------------------------

func lastStoneWeight(_ stones: [Int]) -> Int {
    var stonesRow = stones
    var newStones = 0

    while stonesRow.count > 1 {
        stonesRow = [Int](stonesRow.sorted())
        if stonesRow[stonesRow.count - 1] == stonesRow[stonesRow.count - 2] {
            stonesRow.remove(at: stonesRow.count - 1)
            stonesRow.remove(at: stonesRow.count - 1)
        } else {
            newStones = abs(stonesRow[stonesRow.count - 2] - stonesRow[stonesRow.count - 1])
            stonesRow.remove(at: stonesRow.count - 1)
            stonesRow[stonesRow.count - 1] = newStones
        }
        
    }
    if stonesRow.count > 0 {
        return stonesRow[0]
    }

    return 0
}

//Input:
let stones = [2,7,4,1,8,1]
//Output: 1
//Explanation:
//We combine 7 and 8 to get 1 so the array converts to [2,4,1,1,1] then,
//we combine 2 and 4 to get 2 so the array converts to [2,1,1,1] then,
//we combine 2 and 1 to get 1 so the array converts to [1,1,1] then,
//we combine 1 and 1 to get 0 so the array converts to [1] then that's the value of last stone.

lastStoneWeight(stones)


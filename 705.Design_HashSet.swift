// Solved by Xecca

//705. Design HashSet
//Difficult: Easy
//https://leetcode.com/problems/design-hashset/

//Runtime: 300 ms, faster than 77.14% of Swift online submissions for Design HashSet.
//Memory Usage: 29.9 MB, less than 5.71% of Swift online submissions for Design HashSet.

//
    //Design a HashSet without using any built-in hash table libraries.
    //
    //To be specific, your design should include these functions:
    //
        //add(value): Insert a value into the HashSet.
        //contains(value) : Return whether the value exists in the HashSet or not.
        //remove(value): Remove a value in the HashSet. If the value does not exist in the HashSet, do nothing.
//

class MyHashSet {
    var arr: [Int]
    init() {
        arr = Array(repeating: 0, count: 1000001)
    }
    func add(_ key: Int) {
        arr[key] = 1
    }
    func remove(_ key: Int) {
        arr[key] = 0
    }
    func contains(_ key: Int) -> Bool {
        if arr[key] == 1 {
                return true
        }
        return false
    }
}

//Your MyHashSet object will be instantiated and called as such:
// let obj = MyHashSet()
// obj.add(key)
// obj.remove(key)
// let ret_3: Bool = obj.contains(key)
//-------------------------------------------

//Example:
let hashSet = MyHashSet()
hashSet.add(1)
hashSet.add(2)
hashSet.contains(1)    // returns true
hashSet.contains(3)    // returns false (not found)
hashSet.add(2)
hashSet.contains(2)    // returns true
hashSet.remove(2)
hashSet.contains(2)    // returns false (already removed)

//Test cases:

//if minOperations(["d1/","d2/","../","d21/","./"]) == 2 { print("Correct!") } else { print("Error! Expected: \("")") }


// Solved by Xecca

import Foundation

//21. Merge Two Sorted Lists
//Difficult: Easy
//https://leetcode.com/problems/merge-two-sorted-lists/

//Runtime: 16 ms, faster than 34.29% of Swift online submissions for Merge Two Sorted Lists.
//Memory Usage: 14.1 MB, less than 10.01% of Swift online submissions for Merge Two Sorted Lists.

//

//You are given the heads of two sorted linked lists list1 and list2.
//
//Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
//
//Return the head of the merged linked list.
//
//Constraints:
//
//The number of nodes in both lists is in the range [0, 50].
//-100 <= Node.val <= 100
//Both list1 and list2 are sorted in non-decreasing order.

//


//  Definition for singly-linked list.
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

//class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1?.val == nil && list2?.val == nil {
            return nil
        }
        var finalList: ListNode? = ListNode()
        var arr: [Int] = []
        
        if list1?.val != nil {
            arr += createArray(list1)
        }
        if list2?.val != nil {
            arr += createArray(list2)
        }
        arr = arr.sorted(by: <)
        var i = 0
        let length = arr.count
        let head = finalList

        while i < length {
            finalList?.val = arr[i]
            finalList?.next = ListNode()
            if i == length - 1 {
                finalList?.next = nil
            } else {
                finalList = finalList?.next
            }
            i += 1
        }

        return head
    }
    
    func createArray(_ list: ListNode?) -> [Int] {
        var arr: [Int] = []
        var currList = list
        
        while currList?.next != nil {
            // print(finalList1?.val)
            arr.append(currList?.val ?? 0)
            currList = currList?.next
        }
        arr.append(currList?.val ?? 0)

        return arr
    }
//}

//Example 1:
//
//Input: list1 = [1,2,4], list2 = [1,3,4]
//Output: [1,1,2,3,4,4]
//Example 2:
//
//Input: list1 = [], list2 = []
//Output: []
//Example 3:
//
//Input: list1 = [], list2 = [0]
//Output: [0]

//Test cases:

let input = [1,2,4]
let input2 = [1,3,4]
let answer = 4193

if mergeTwoLists(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


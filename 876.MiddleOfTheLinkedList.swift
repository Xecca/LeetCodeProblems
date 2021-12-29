// Solved by Xecca

import Foundation

//876. Middle of the Linked List
//Difficult: Easy
//https://leetcode.com/problems/middle-of-the-linked-list/

//Runtime: 4 ms, faster than 86.91% of Swift online submissions for Middle of the Linked List.
//Memory Usage: 13.6 MB, less than 93.83% of Swift online submissions for Middle of the Linked List.

//

//Given the head of a singly linked list, return the middle node of the linked list.
//
//If there are two middle nodes, return the second middle node.
//
//Constraints:
//
//The number of nodes in the list is in the range [1, 100].
//1 <= Node.val <= 100

//


//  Definition for singly-linked list.
public class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var amountOfNums = 1
        var newList = head
        let headPointer = head
        
        while newList?.next != nil {
            amountOfNums += 1
            newList = newList?.next
        }
        let middleIndex = amountOfNums / 2
        
        newList = headPointer
        amountOfNums = 1
        
        while newList?.next != nil {
            if amountOfNums == middleIndex {
                newList = newList?.next
                return newList
            }
            amountOfNums += 1
            newList = newList?.next
        }
        
        return head
    }
}

//Example 1:
//
//Input: head = [1,2,3,4,5]
//Output: [3,4,5]
//Explanation: The middle node of the list is node 3.
//Example 2:
//
//Input: head = [1,2,3,4,5,6]
//Output: [4,5,6]
//Explanation: Since the list has two middle nodes with values 3 and 4, we return the second one.

//Test cases:

//let input = "2[abc]3[cd]ef"
//let l1: ListNode? = ListNode(5)
//let answer = ListNode(9)

//let object = Solution()
//if object.middleNode(l1) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


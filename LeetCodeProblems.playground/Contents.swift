// Solved by Xecca

import Foundation

//83. Remove Duplicates from Sorted List
//Difficult: Easy
//https://leetcode.com/problems/remove-duplicates-from-sorted-list/submissions/

//Runtime: 24 ms, faster than 89.39% of Swift online submissions for Remove Duplicates from Sorted List.
//Memory Usage: 14.2 MB, less than 49.07% of Swift online submissions for Remove Duplicates from Sorted List.

//

//Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

//

//Constraints:
//
//The number of nodes in the list is in the range [0, 300].
//-100 <= Node.val <= 100
//The list is guaranteed to be sorted in ascending order.

//

func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    if head == nil {
        return nil
    }
    if head?.next == nil {
        return head
    }
    
    var curr = head
    
    while curr?.next != nil {
        while curr?.next?.val == curr?.val {
            curr?.next = curr?.next?.next
        }
        curr = curr?.next
    }
    
    return head
}

//Example 1:
//
//Input: head = [1,1,2]
//Output: [1,2]
//Example 2:
//
//Input: head = [1,1,2,3,3]
//Output: [1,2,3]

//Test cases:

let input = 1
let input2 = 2
let answer = 3

//if getSum(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }



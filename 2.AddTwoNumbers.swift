// Solved by Xecca

import Foundation

//2. Add Two Numbers
//Difficult: Medium
//https://leetcode.com/problems/add-two-numbers/

//Runtime: 32 ms, faster than 98.94% of Swift online submissions for Add Two Numbers.
//Memory Usage: 13.9 MB, less than 59.89% of Swift online submissions for Add Two Numbers.
    
//

//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Constraints:
//
//1 <= s.length <= 30
//s consists of lowercase English letters, digits, and square brackets '[]'.
//s is guaranteed to be a valid input.
//All the integers in s are in the range [1, 300].

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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        let arr1: [Int] = fillArrFromNode(l1)
        let arr2: [Int] = fillArrFromNode(l2)
        
        let sum: [Int]
        
        if arr1.count >= arr2.count {
            sum = makeSumOfTwoArr(arr1, arr2)
        } else {
            sum = makeSumOfTwoArr(arr2, arr1)
        }
        
        return makeListNodeFromNum(sum)
    }
    
    func fillArrFromNode(_ l: ListNode?) -> [Int] {
        var lCurr = l
        var arr: [Int] = []
        
        while lCurr!.next != nil {
            arr.append(lCurr!.val)
            lCurr = lCurr!.next
        }
        arr.append(lCurr!.val)
        
        return arr
    }
    
    func makeSumOfTwoArr(_ theBiggestArr: [Int], _ theSmallestArr: [Int]) -> [Int] {
        var sum: [Int] = theBiggestArr
        var i = 0
        var j = 0
        var surplusage = 0
        var portableOne = 0
        
        while i < theSmallestArr.count {
            surplusage = theSmallestArr[i] + sum[j]
            if surplusage >= 10 {
                surplusage -= 10
                sum[j] = surplusage
                portableOne = 1
                if j == sum.count - 1 {
                    sum.append(1)
                    portableOne = 0
                    break
                } else {
                    j += 1
                    while portableOne == 1 {
                        if j <= sum.count -  1 {
                            surplusage = sum[j] + 1
                            if surplusage == 10 {
                                sum[j] = 0
                                if j == sum.count - 1 {
                                    sum.append(1)
                                    portableOne = 0
                                    break
                                }
                            } else {
                                sum[j] = surplusage
                                portableOne = 0
                                break
                            }
                        } else {
                            break
                        }
                        j += 1
                    }
                }
            } else {
                sum[j] = surplusage
            }
            i += 1
            j = i
        }
        
        return sum
    }
    
    func makeListNodeFromNum(_ sum: [Int]) -> ListNode? {
        var newNode: ListNode? = ListNode()
        let head: ListNode? = newNode
        var i = 0
        let length = sum.count - 1
        
        while i <= length {
            if i == length {
                newNode?.val = sum[i]
                newNode?.next = nil
            } else {
                newNode?.next = ListNode()
                newNode?.val = sum[i]
                newNode = newNode?.next
            }
            i += 1
        }
        
        return head
    }
    
    // Alternative solution:
//    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//        var l1: ListNode? = l1
//        var l2: ListNode? = l2
//        var result: ListNode? = ListNode(0)
//        let head = result
//        var carry = 0
//
//        while l1 != nil || l2 != nil || carry > 0 {
//            let sum = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
//
//            let value = sum % 10
//            carry = sum / 10
//
//            result?.next = ListNode(value)
//            result = result?.next
//            l1 = l1?.next
//            l2 = l2?.next
//        }
//
//        return head?.next
//    }
    
}

//Example 1:
//
//Input: l1 = [2,4,3], l2 = [5,6,4]
//Output: [7,0,8]
//Explanation: 342 + 465 = 807.
//Example 2:
//
//Input: l1 = [0], l2 = [0]
//Output: [0]
//Example 3:
//
//Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
//Output: [8,9,9,9,0,0,0,1]

//Test cases:

//let input = "2[abc]3[cd]ef"
let l1: ListNode? = ListNode(5) ,l2: ListNode? = ListNode(4)
let answer = ListNode(9)

let object = Solution()
if object.addTwoNumbers(l1, l2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


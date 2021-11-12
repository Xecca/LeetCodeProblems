// Solved by Xecca

import Foundation

//155. Min Stack
//Difficult: Easy
//https://leetcode.com/problems/min-stack/

//Runtime: 80 ms, faster than 53.73% of Swift online submissions for Min Stack.
//Memory Usage: 15.5 MB, less than 31.34% of Swift online submissions for Min Stack.
    
//

//Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
//
//Implement the MinStack class:
//
//MinStack() initializes the stack object.
//void push(int val) pushes the element val onto the stack.
//void pop() removes the element on the top of the stack.
//int top() gets the top element of the stack.
//int getMin() retrieves the minimum element in the stack.
//
//Constraints:
//
//-2^31 <= val <= 2^31 - 1
//Methods pop, top and getMin operations will always be called on non-empty stacks.
//At most 3 * 10^4 calls will be made to push, pop, top, and getMin.

//

class MinStack {
    var stack: [Int] = []
    
    init() {
        
    }
    
    func push(_ val: Int) {
        stack.append(val)
    }
    
    func pop() {
        let endOfStack = stack.count - 1
        if endOfStack >= 0 {
            stack.remove(at: endOfStack)
        }
    }
    
    func top() -> Int {
        let endOfStack = stack.count - 1
        if endOfStack >= 0 {
            return stack[endOfStack]
        }
        return 0
    }
    
    func getMin() -> Int {
        return stack.min() ?? 0
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

//Example 1:
//
//Input
//["MinStack","push","push","push","getMin","pop","top","getMin"]
//[[],[-2],[0],[-3],[],[],[],[]]
//
//Output
//[null,null,null,null,-3,null,0,-2]
//
//Explanation
//MinStack minStack = new MinStack();
//minStack.push(-2);
//minStack.push(0);
//minStack.push(-3);
//minStack.getMin(); // return -3
//minStack.pop();
//minStack.top();    // return 0
//minStack.getMin(); // return -2

//Test cases:

let input = ["MinStack","push","push","push","getMin","pop","top","getMin"]
let answer = [[],[-2],[0],[-3],[],[],[],[]]

if MinStack == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


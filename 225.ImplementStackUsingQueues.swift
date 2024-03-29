// Solved by Xecca

import Foundation

//225. Implement Stack using Queues
//Difficult: Easy
//https://leetcode.com/problems/implement-stack-using-queues/

//Runtime: 2 ms, faster than 68.83% of Swift online submissions for Implement Stack using Queues.
//Memory Usage: 14.3 MB, less than 71.43% of Swift online submissions for Implement Stack using Queues.

//

//Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).
//
//Implement the MyStack class:
//
//void push(int x) Pushes element x to the top of the stack.
//int pop() Removes the element on the top of the stack and returns it.
//int top() Returns the element on the top of the stack.
//boolean empty() Returns true if the stack is empty, false otherwise.
//Notes:
//
//You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
//Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.

//Constraints:
//
//1 <= x <= 9
//At most 100 calls will be made to push, pop, top, and empty.
//All the calls to pop and top are valid.

//

class MyStack {
    var stack: [Int] = []
    init() {
        
    }
    
    func push(_ x: Int) {
        stack.append(x)
    }
    
    func pop() -> Int {
        return stack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func empty() -> Bool {
        return stack.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */

//Example 1:
//
//Input
//["MyStack", "push", "push", "top", "pop", "empty"]
//[[], [1], [2], [], [], []]
//Output
//[null, null, null, 2, 2, false]
//
//Explanation
//MyStack myStack = new MyStack();
//myStack.push(1);
//myStack.push(2);
//myStack.top(); // return 2
//myStack.pop(); // return 2
//myStack.empty(); // return False

//Test cases:

//let input =
//let answer =
//
//if  == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }


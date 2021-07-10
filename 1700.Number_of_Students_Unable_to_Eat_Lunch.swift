// Solved by Xecca

//1700. Number of Students Unable to Eat Lunch
//Difficult: Easy
//https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/

//Runtime: 8 ms, faster than 90.91% of Swift online submissions for Number of Students Unable to Eat Lunch.
//Memory Usage: 13.8 MB, less than 95.45% of Swift online submissions for Number of Students Unable to Eat Lunch.

//

//The school cafeteria offers circular and square sandwiches at lunch break, referred to by numbers 0 and 1 respectively. All students stand in a queue. Each student either prefers square or circular sandwiches.
//
//The number of sandwiches in the cafeteria is equal to the number of students. The sandwiches are placed in a stack. At each step:
//
//If the student at the front of the queue prefers the sandwich on the top of the stack, they will take it and leave the queue.
//Otherwise, they will leave it and go to the queue's end.
//This continues until none of the queue students want to take the top sandwich and are thus unable to eat.
//
//You are given two integer arrays students and sandwiches where sandwiches[i] is the type of the i​​​​​​th sandwich in the stack (i = 0 is the top of the stack) and students[j] is the preference of the j​​​​​​th student in the initial queue (j = 0 is the front of the queue). Return the number of students that are unable to eat.
//
//Constraints:
//
//1 <= students.length, sandwiches.length <= 100
//students.length == sandwiches.length
//sandwiches[i] is 0 or 1.
//students[i] is 0 or 1.

//

func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
    var stud = students
    var sandw = sandwiches
    var rep = 0
    
    while rep <= stud.count {
        if stud[0] != sandw[0] {
            stud.append(stud[0])
            stud.remove(at: 0)
        } else {
            stud.remove(at: 0)
            sandw.remove(at: 0)
            rep = 0
        }
        rep += 1
    }
    
    return stud.count
}

//Example 1:
//
//Input: students = [1,1,0,0], sandwiches = [0,1,0,1]
//Output: 0
//Explanation:
//- Front student leaves the top sandwich and returns to the end of the line making students = [1,0,0,1].
//- Front student leaves the top sandwich and returns to the end of the line making students = [0,0,1,1].
//- Front student takes the top sandwich and leaves the line making students = [0,1,1] and sandwiches = [1,0,1].
//- Front student leaves the top sandwich and returns to the end of the line making students = [1,1,0].
//- Front student takes the top sandwich and leaves the line making students = [1,0] and sandwiches = [0,1].
//- Front student leaves the top sandwich and returns to the end of the line making students = [0,1].
//- Front student takes the top sandwich and leaves the line making students = [1] and sandwiches = [1].
//- Front student takes the top sandwich and leaves the line making students = [] and sandwiches = [].
//Hence all students are able to eat.
//Example 2:
//
//Input: students = [1,1,1,0,0,1], sandwiches = [1,0,0,0,1,1]
//Output: 3

//Test cases:

if countStudents([1,1,1,0,0,1], [1,0,0,0,1,1]) == 3 { print("Correct!") } else { print("Error! Expected: \(3)") }


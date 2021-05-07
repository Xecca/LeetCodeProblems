// Solved by Xecca

//455. Assign Cookies
//Difficult: Easy
//https://leetcode.com/problems/assign-cookies/

//Runtime: 300 ms, faster than 100.00% of Swift online submissions for Assign Cookies.
//Memory Usage: 14.4 MB, less than 60.00% of Swift online submissions for Assign Cookies.

//

//Assume you are an awesome parent and want to give your children some cookies. But, you should give each child at most one cookie.
//
//Each child i has a greed factor g[i], which is the minimum size of a cookie that the child will be content with; and each cookie j has a size s[j]. If s[j] >= g[i], we can assign the cookie j to the child i, and the child i will be content. Your goal is to maximize the number of your content children and output the maximum number.

//Constraints:
//
//1 <= g.length <= 3 * 104
//0 <= s.length <= 3 * 104
//1 <= g[i], s[j] <= 231 - 1

//

func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
    let greedKids: [Int] = g.sorted()
    let cookies: [Int] = s.sorted()
    var i = 0
    var j = 0
    let kidsCount = greedKids.count
    let cookiesCount = cookies.count
    var maxMatched = 0

    while i < kidsCount {
        while j < cookiesCount {
            if greedKids[i] <= cookies[j] {
                maxMatched += 1
                j += 1
                break
            }
            j += 1
        }
        i += 1
    }

    return maxMatched
}

//Example 1:
//
//Input: g = [1,2,3], s = [1,1]
//Output: 1
//Explanation: You have 3 children and 2 cookies. The greed factors of 3 children are 1, 2, 3.
//And even though you have 2 cookies, since their size is both 1, you could only make the child whose greed factor is 1 content.
//You need to output 1.
//Example 2:
//
//Input: g = [1,2], s = [1,2,3]
//Output: 2
//Explanation: You have 2 children and 3 cookies. The greed factors of 2 children are 1, 2.
//You have 3 cookies and their sizes are big enough to gratify all of the children,
//You need to output 2.

//Test cases:

if findContentChildren([1,2,3], [1,1]) == 1 { print("Correct!") } else { print("Error! Expected: \(1)") }
if findContentChildren([1,2], [1,2,3]) == 2 { print("Correct!") } else { print("Error! Expected: \(2)") }

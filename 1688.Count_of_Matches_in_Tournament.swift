// Solved by Xecca

//1688. Count of Matches in Tournament
//Difficult: Easy
//https://leetcode.com/problems/count-of-matches-in-tournament/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Count of Matches in Tournament.
//Memory Usage: 14.2 MB, less than 12.16% of Swift online submissions for Count of Matches in Tournament.

//

//You are given an integer n, the number of teams in a tournament that has strange rules:
//
//If the current number of teams is even, each team gets paired with another team. A total of n / 2 matches are played, and n / 2 teams advance to the next round.
//If the current number of teams is odd, one team randomly advances in the tournament, and the rest gets paired. A total of (n - 1) / 2 matches are played, and (n - 1) / 2 + 1 teams advance to the next round.
//Return the number of matches played in the tournament until a winner is decided.

//Constraints:
//
//1 <= n <= 200

//

func numberOfMatches(_ n: Int) -> Int {
    var teams = n
    var matches = 0
    var totalMatches = 0
    var extraTeam = 0
    
    while teams > 1 {
        extraTeam = teams % 2
        matches = teams / 2
        totalMatches += matches
        teams = (teams + extraTeam) / 2
    }
    
    return totalMatches
}

//Example 1:
//
//Input: n = 7
//Output: 6
//Explanation: Details of the tournament:
//- 1st Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 2nd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 3rd Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 3 + 2 + 1 = 6.
//Example 2:
//
//Input: n = 14
//Output: 13
//Explanation: Details of the tournament:
//- 1st Round: Teams = 14, Matches = 7, and 7 teams advance.
//- 2nd Round: Teams = 7, Matches = 3, and 4 teams advance.
//- 3rd Round: Teams = 4, Matches = 2, and 2 teams advance.
//- 4th Round: Teams = 2, Matches = 1, and 1 team is declared the winner.
//Total number of matches = 7 + 3 + 2 + 1 = 13.

//Test cases:

if numberOfMatches(7) == 6 { print("Correct!") } else { print("Error! Expected: \(6)") }



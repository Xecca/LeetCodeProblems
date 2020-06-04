//933. Number of Recent Calls
//https://leetcode.com/problems/number-of-recent-calls/
//Runtime: 696 ms, faster than 97.44% of Swift online submissions for Number of Recent Calls.
//Memory Usage: 22.1 MB, less than 100.00% of Swift online submissions for Number of Recent Calls.
//----------------------------------------------------
//Write a class RecentCounter to count recent requests.
//
//It has only one method: ping(int t), where t represents some time in milliseconds.
//
//Return the number of pings that have been made from 3000 milliseconds ago until now.
//
//Any ping with time in [t - 3000, t] will count, including the current ping.
//
//It is guaranteed that every call to ping uses a strictly larger value of t than before.
//----------------------------------------------------

class RecentCounter {
    
    var pingArr = [Int]()
     
    init() {
        
    }
    
    func ping(_ t: Int) -> Int {
        
        pingArr.append(t)
        
        while pingArr[0] < t - 3000 {
            pingArr.remove(at: 0)
        }
        
        return pingArr.count
    }
}

//Input:
let inputs = ["RecentCounter","ping","ping","ping","ping","ping"]
, inputs1 = [[],[1],[100],[3001],[3002],[3007]]

let t = inputs1[4][0]
//Output: [null,1,2,3,3,4]

//* Your RecentCounter object will be instantiated and called as such:
let obj = RecentCounter()
let ret_1: Int = obj.ping(t)


    func lengthOfLongestSubstring(_ s: String) -> Int {
        // not my solution:
        var dict: [Character: Int] = [:]
        var maxSub = 0
        var start = 0
        
        for (i, char) in s.enumerated() {
            if let currInt = dict[char] {
                start = max(start, currInt + 1)
            }
            dict[char] = i
            maxSub = max(maxSub, i - start + 1)
        }
        
        return maxSub
    }

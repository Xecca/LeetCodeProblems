struct Stack {
    var stackValue: [Int] = []
    mutating func push(_ newEl: Int) {
        stackValue.insert(newEl, at: 0)
    }
    func isEmpty() -> Bool {
        if stackValue.count > 0 {
            return false
        }
        return true
    }
    func top() -> Int {
        if !isEmpty() {
            return stackValue[0]
        }
        return -1
    }
    mutating func pop() -> Int {
        if !isEmpty() {
            let val = stackValue[0]
            stackValue.remove(at: 0)
            return val
        }
        return -1
    }
}

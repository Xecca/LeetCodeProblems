// Created by Xecca

struct Queue {
    var queueValue: [Int] = []
    mutating func enqueue(_ newEl: Int) {
        queueValue.append(newEl)
    }
    func isEmpty() -> Bool {
        if queueValue.count > 0 {
            return false
        }
        return true
    }
    func top() -> Int {
        if !isEmpty() {
            return queueValue[0]
        }
        return -1
    }
    mutating func dequeue() -> Int {
        if !isEmpty() {
            let val = queueValue[0]
            queueValue.remove(at: 0)
            return val
        }
        return -1
    }
    func showQueue() {
        print(queueValue)
    }
}

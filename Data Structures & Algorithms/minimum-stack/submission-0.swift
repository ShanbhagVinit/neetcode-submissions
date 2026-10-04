class MinStack {
    private var stack: [Int]
    private var minStack: [Int]

    init() {
        stack = []
        minStack = []
    }

    func push(_ val: Int) {
      stack.append(val)
      let minVal: Int
      if minStack.count != 0 {
          minVal = min(val, minStack.last!) // we know there is at least one elemet
      } else {
          minVal = val
      }
      minStack.append(minVal)
    }

    func pop() {
        stack.popLast()
        minStack.popLast()
    }

    func top() -> Int {
        return stack.last!
    }

    func getMin() -> Int {
        return minStack.last!
    }
}

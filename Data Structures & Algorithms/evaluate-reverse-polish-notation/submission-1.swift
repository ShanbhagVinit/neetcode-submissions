class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()

        for str in tokens {
            if let num = Int(str) {
                stack.append(num)
            } else if str == "+" {
                let sum = stack.popLast()! + stack.popLast()!
                stack.append(sum)
            } else if str == "-" {
                let second = stack.popLast()!
                let first = stack.popLast()!
                let diff = first - second
                stack.append(diff)
            } else if str == "*" {
                let product = stack.popLast()! * stack.popLast()!
                stack.append(product)
            } else if str == "/" {
                let second = stack.popLast()!
                let first = stack.popLast()!
                let quotient = first / second
                stack.append(quotient)
            }
        }
        return stack.first!
    }
}

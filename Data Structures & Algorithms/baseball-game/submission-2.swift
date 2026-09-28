class Solution {
    func calPoints(_ operations: [String]) -> Int {
        var localOps = [Int](repeating: 0, count: operations.count)
        var index = 0
        var sum = 0
        for i in 0..<operations.count {
            if let num = Int(operations[i]) {
                localOps[index] = num
                index += 1
            } else if operations[i] == "+" {
                localOps[index] = localOps[index - 1] + localOps[index - 2]
                index += 1
            } else if operations[i] == "D" {
                localOps[index] = 2 * localOps[index - 1]
                index += 1
            } else if operations[i] == "C" {
                index = index - 1
            }
        }

        for i in 0..<index {
            sum = sum + localOps[i]
        }
        return sum

    }
}

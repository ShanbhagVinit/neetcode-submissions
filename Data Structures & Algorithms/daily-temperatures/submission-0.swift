class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var result = [Int](repeating: 0, count: temperatures.count)
        var stack = [(Int, Int)]() // Holding Pair
        
        for (index, val) in temperatures.enumerated() {
            while !stack.isEmpty, stack.last!.1 < val {
                let (i, temp) = stack.popLast()!
                result[i] = index - i
            }
            stack.append((index, val))
        }
        
        return result
    }
}

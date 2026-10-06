class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var maxArea = 0
        var stack = [(Int, Int)]()
        
        for (index, val) in heights.enumerated() {
            var start = index
            while !stack.isEmpty, stack.last!.1 > val {
                let (i, height) = stack.popLast()!
                maxArea = max(maxArea, height * (index - i))
                start = i
            }
            stack.append((start, val))
        }
        
        for (i, h) in stack {
            maxArea = max(maxArea, h * (heights.count - i))
        }
        
        return maxArea
    }
}

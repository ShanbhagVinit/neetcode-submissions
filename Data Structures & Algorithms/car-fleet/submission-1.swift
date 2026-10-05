class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var pair = zip(position, speed).map { ($0, $1) }
        var stack = [Double]()
        
        for (p, s) in pair.sorted(by: { $1.0 < $0.0 })  {
            let time = Double(target - p) / Double(s)
            stack.append(time)
            let index = stack.count - 1
            if stack.count >= 2, stack[index] <= stack[index - 1] {
                stack.popLast()
            }
        }
        
        return stack.count
    }
}

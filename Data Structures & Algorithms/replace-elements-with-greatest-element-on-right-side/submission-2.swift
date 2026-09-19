class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var rightMax = -1 // start with rightMost
        var array = arr    
        for i in stride(from: array.count - 1, to: -1, by: -1) {
            var newMax = max(rightMax, array[i])
            array[i] = rightMax 
            rightMax = newMax
        }
        return array
    }
}

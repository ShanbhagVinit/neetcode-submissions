class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let count = nums.count
        let totalCount = count * 2
        var newNums = [Int](repeating: 0, count: totalCount)
        for i in 0..<count {
            newNums[i] = nums[i]
            newNums[i + count] = nums[i]
        }
        return newNums
    }
}

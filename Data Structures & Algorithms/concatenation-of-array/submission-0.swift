class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var newNums = [Int]()
        newNums = nums
        newNums = newNums + nums

        return newNums
    }
}

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var largestCount = 0
        var counter = 0
        for var i in 0..<nums.count {
            if nums[i] == 1 {
                counter += 1
            } else {
                if counter > largestCount {
                    largestCount = counter
                }
                // reset the counter
                counter = 0
            }
        }
        return counter > largestCount ? counter : largestCount
    }
}

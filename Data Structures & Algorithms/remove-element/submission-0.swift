class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        for var i in 0..<nums.count {
            if nums[i] == val {
                for var j in i..<nums.count {
                    if nums[j] == val {
                        continue;
                    } 
                    var temp = nums[i]
                    nums[i] = nums[j]
                    nums[j] = temp
                }
            }
            continue;
        }

        var count = 0
        for var i in 0..<nums.count {
            if nums[i] != val {
                count += 1
            } else {
                break;
            }
        }
        return count
    }
}

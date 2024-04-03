# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  nums.sort!
  count = 1
  candidate = nums[0]
  i = 0

  while ((i + 1) < nums.size) && (count <= (nums.size / 2.0))
    if nums[i] == nums[i+1]
      count += 1
    else
      candidate = nums[i+1]
      count = 1
    end

    i += 1
  end

  candidate
end

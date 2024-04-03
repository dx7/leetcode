# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  count = 0
  candidate = 0
  i = 0

  while i < nums.size
    if count == 0
      candidate = nums[i]
    end

    if nums[i] == candidate
      count += 1;
    else
      count -= 1;
    end

    i += 1
  end

  candidate
end

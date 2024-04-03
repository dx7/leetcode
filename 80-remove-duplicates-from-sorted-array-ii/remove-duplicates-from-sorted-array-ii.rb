# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  i = 0
  j = 1
  first_duplicate = false

  while j < nums.size
    if nums[j] > nums[i] || !first_duplicate
      if nums[j] > nums[i]
        first_duplicate = false
      elsif not first_duplicate
        first_duplicate = true
      end

      if j != i + 1
        nums[i + 1] = nums[j]
      end

      i += 1
    end

    j += 1
  end

  i + 1
end

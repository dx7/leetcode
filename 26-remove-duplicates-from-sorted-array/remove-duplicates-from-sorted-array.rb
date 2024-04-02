# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    i = 0
    j = 1

    while j < nums.size
      if nums[j] > nums[i]
        if j != i + 1
          nums[i + 1] = nums[j]
        end

        i += 1
      end

      j += 1
    end

    i + 1
end

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    x = nums.size - 1

    while x >= 0
        break if nums[x] != val
        x -= 1
    end

    i = x - 1

    while i >= 0
        if nums[i] == val
            nums[i] = nums[x]
            x -= 1
        end

        i -= 1
    end

    x + 1
end

UPPER_LIMIT = (2**31 - 1) / 10
LOWER_LIMIT = -(2**31 / 10)

# @param {Integer} x
# @return {Integer}
def reverse(x)
  ans = 0
  n = x.abs

  while n.positive?
    return 0 if ans < LOWER_LIMIT || ans > UPPER_LIMIT

    ans = ans * 10 + n % 10
    n /= 10
  end

  x.negative? ? -ans : ans
end

# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x.negative?

  n = x
  reverse = 0

  while n.positive?
    reverse = reverse * 10 + n % 10
    n /= 10
  end

  x == reverse
end

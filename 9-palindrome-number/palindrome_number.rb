# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  word = x.to_s
  palindrome_check_position(word, 0, word.size - 1)
end

def palindrome_check_position(word, i_begin, i_end)
  if i_begin >= i_end
    true
  else
    (word[i_begin] == word[i_end]) && palindrome_check_position(word, i_begin + 1, i_end - 1)
  end
end

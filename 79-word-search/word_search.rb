# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  # This conditionally reverses the characters in the word
  # to make the search more efficient. If the beginning of the
  # provided word has more of the same characters in a row than the
  # end of the word, reversing the characters in the word
  # is more efficient because the more letters that are in a row, the
  # more paths have to be explored.
  if word.match(/^#{word[0]}+/)[0].size > word.match(/#{word[-1]}+$/)[0].size
    word.reverse!
  end

  board.each_with_index do |row, x|
    row.each_with_index do |col, y|
      return true if search(board, word, x, y, 0)
    end
  end

  false
end

def search(board, word, x, y, pos)
  return true if pos == word.size
  return false if x < 0 || x >= board.size ||
    y < 0 || y >= board[x].size ||
    board[x][y] != word[pos]

  temp = board[x][y]
  board[x][y] = nil

  return true if search(board, word, x + 1, y, pos + 1) ||
    search(board, word, x - 1, y, pos + 1) ||
    search(board, word, x, y + 1, pos + 1) ||
    search(board, word, x, y - 1, pos + 1)

  board[x][y] = temp

  false
end

require 'rspec'
require 'ffi'

`gcc -shared -o word_search.so word_search.c`

module Kernel
  extend FFI::Library
  ffi_lib './word_search.so'
  attach_function :ffi_exist, :exist, [:pointer, :int, :pointer, :string], :bool

  # Wrap the C function with a friendly method that packages and unpackages the data.
  def exist(board, word)
    # Convert the Ruby 2D array to a C 2D array.
    c_board = FFI::MemoryPointer.new(:pointer, board.size)

    board.each_with_index do |row, i|
      c_row = FFI::MemoryPointer.new(:char, row.size)
      c_row.write_string(row.join)
      c_board[i].put_pointer(0, c_row)
    end

    # Call the C function.
    ffi_exist(c_board, board.size, c_board[0], word)
  end
end

RSpec.configure do |config|
  config.after(:suite) do
    File.unlink('./word_search.so')
  end
end

alias exist_word exist

describe '#exist' do
  it 'case 01' do
    board = [
      ['A','B','C','E'],
      ['S','F','C','S'],
      ['A','D','E','E']
    ]
    word = 'ABCCED'
    expect(exist_word(board, word)).to eq(true)
  end

  it 'case 02' do
    board = [
      ['A','B','C','E'],
      ['S','F','C','S'],
      ['A','D','E','E']
    ]
    word = 'SEE'
    expect(exist_word(board, word)).to eq(true)
  end

  it 'case 03' do
    board = [
      ['A','B','C','E'],
      ['S','F','C','S'],
      ['A','D','E','E']
    ]
    word = 'ABCB'
    expect(exist_word(board, word)).to eq(false)
  end

  it 'case 04' do
    board = [
      ['A','B','C','E'],
      ['S','F','E','S'],
      ['A','D','E','E']
    ]
    word = 'ABCESEEEFS'
    expect(exist_word(board, word)).to eq(true)
  end

  it 'case 05' do
    board = [
      ['C','A','A'],
      ['A','A','A'],
      ['B','C','D']
    ]
    word = 'AAB'
    expect(exist_word(board, word)).to eq(true)
  end

  it 'case 06' do
    board = [
      ['A']
    ]
    word = 'A'
    expect(exist_word(board, word)).to eq(true)
  end

  it 'case 07' do
    board = [
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A']
    ]
    word = 'AAAAAAAAAAAAAAa'
    expect(exist_word(board, word)).to eq(false)
  end

  it 'case 08' do
    board = [
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','A'],
      ['A','A','A','A','A','B'],
      ['A','A','A','A','B','A']
    ]
    word = 'AAAAAAAAAAAAABB'
    expect(exist_word(board, word)).to eq(false)
  end
end

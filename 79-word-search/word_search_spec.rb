require 'rspec'
require_relative 'word_search'

alias :exist_word :exist

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

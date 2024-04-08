require 'rspec'
require_relative 'group_anagrams'

describe '#group_anagrams' do
  it 'case 1' do
    words = ['eat', 'tea', 'tan', 'ate', 'nat', 'bat']
    groups = [['eat', 'tea', 'ate'], ['tan', 'nat'], ['bat']]

    expect(group_anagrams(words)).to eq(groups)
  end

  it 'case 2' do
    words = ['a']
    groups = [['a']]

    expect(group_anagrams(words)).to eq(groups)
  end

  it 'case 3' do
    words = ['']
    groups = [['']]

    expect(group_anagrams(words)).to eq(groups)
  end
end

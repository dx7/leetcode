require 'rspec'
require_relative 'strictly_palindromic_number'

describe '#is_strictly_palindromic' do
  it 'case 1' do
    expect(is_strictly_palindromic(9)).to eq(false)
  end

  it 'case 2' do
    expect(is_strictly_palindromic(4)).to eq(false)
  end

  it 'case 3' do
    expect(is_strictly_palindromic(121)).to eq(false)
  end
end

require 'rspec'
require_relative 'palindrome_number'

describe 'palindrome_number' do
  it 'case 1' do
    expect(is_palindrome(121)).to eq(true)
  end

  it 'case 2' do
    expect(is_palindrome(-121)).to eq(false)
  end

  it 'case 3' do
    expect(is_palindrome(10)).to eq(false)
  end
end

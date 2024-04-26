require 'rspec'
require_relative 'valid_palindrome'

describe '#is_palindrome' do
  it 'case 1' do
    expect(is_palindrome('A man, a plan, a canal: Panama')).to eq(true)
  end

  it 'case 2' do
    expect(is_palindrome('race a car')).to eq(false)
  end

  it 'case 3' do
    expect(is_palindrome(' ')).to eq(true)
  end

  it 'case 4' do
    expect(is_palindrome('ab_a')).to eq(true)
  end

  it 'case 5' do
    expect(is_palindrome('a')).to eq(true)
  end

  it 'case 6' do
    expect(is_palindrome('0P')).to eq(false)
  end
end

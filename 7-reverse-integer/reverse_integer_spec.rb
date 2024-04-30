require 'rspec'
require_relative 'reverse_integer'
require 'byebug'

describe '#reverse' do
  it 'case 1' do
    expect(reverse(123)).to eq(321)
  end

  it 'case 2' do
    expect(reverse(-123)).to eq(-321)
  end

  it 'case 3' do
    expect(reverse(120)).to eq(21)
  end

  it 'case 4' do
    expect(reverse(0)).to eq(0)
  end

  it 'case 5' do
    expect(reverse(1534236469)).to eq(0)
  end

  it 'case 6' do
    expect(reverse(-2147483648)).to eq(0)
  end

  it 'case 7' do
    expect(reverse(1563847412)).to eq(0)
  end
end

require 'rspec'
require_relative 'majority-element'

describe 'majority_element' do
  it 'case 1' do
    nums = [3, 2, 3]

    expect(majority_element(nums)).to eq(3)
  end

  it 'case 2' do
    nums = [2, 2, 1, 1, 1, 2, 2]

    expect(majority_element(nums)).to eq(2)
  end
end

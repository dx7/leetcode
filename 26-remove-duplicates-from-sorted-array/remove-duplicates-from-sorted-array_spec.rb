require 'rspec'
require_relative 'remove-duplicates-from-sorted-array'

describe 'remove_duplicates' do
  it 'case 1' do
    nums = [1, 1, 2]
    k = remove_duplicates(nums)

    expect(k).to eq(2)
    expect(nums[0...k]).to eq([1, 2])
  end

  it 'case 2' do
    nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    k = remove_duplicates(nums)

    expect(k).to eq(5)
    expect(nums[0...k]).to eq([0, 1, 2, 3, 4])
  end

  it 'case 3' do
    nums = [1, 1]
    k = remove_duplicates(nums)

    expect(k).to eq(1)
    expect(nums[0...k]).to eq([1])
  end

  it 'case 4' do
    nums = [1, 2]
    k = remove_duplicates(nums)

    expect(k).to eq(2)
    expect(nums[0...k]).to eq([1, 2])
  end
end

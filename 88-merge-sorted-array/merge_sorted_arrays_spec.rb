require 'rspec'
require './merge_sorted_arrays'

describe 'merge_sorted_arrays' do
  context 'default' do
    it 'case 1' do
      nums1 = [1,2,3,0,0,0]
      m = 3
      nums2 = [2,5,6]
      n = 3
      merge(nums1, m, nums2, n)

      expect(nums1).to eq([1,2,2,3,5,6])
    end

    it 'case 2' do
      nums1 = [1]
      m = 1
      nums2 = []
      n = 0
      merge(nums1, m, nums2, n)

      expect(nums1).to eq([1])
    end

    it 'case 3' do
      nums1 = [0]
      m = 0
      nums2 = [1]
      n = 1
      merge(nums1, m, nums2, n)

      expect(nums1).to eq([1])
    end
  end

  context 'custom' do
    it 'case 1' do
      nums1 = [1,3,5,7,9,0,0,0]
      m = 5
      nums2 = [2,4,6]
      n = 3
      merge(nums1, m, nums2, n)

      expect(nums1).to eq([1,2,3,4,5,6,7,9])
    end
  end
end

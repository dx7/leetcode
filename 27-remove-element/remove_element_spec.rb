require 'rspec'
require_relative 'remove_element'

describe 'remove_element' do
  context 'default' do
    it 'case 1' do
      expect(remove_element([3, 2, 2, 3], 3)).to eq(2)
    end

    it 'case 2' do
      expect(remove_element([0, 1, 2, 2, 3, 0, 4, 2], 2)).to eq(5)
    end
  end

  context 'custom' do
    it 'returns 0 if the array is empty' do
      expect(remove_element([], 3)).to eq(0)
    end
  end
end

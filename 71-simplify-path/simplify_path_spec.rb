require 'rspec'
require_relative 'simplify_path'

describe '#simplify_path' do
  it 'case 1' do
    input = '/a/b/../c/'

    expect(simplify_path(input)).to eq('/a/c')
  end

  it 'case 2' do
    input = '/a//c/'

    expect(simplify_path(input)).to eq('/a/c')
  end

  it 'case 3' do
    input = '/a/./c/'

    expect(simplify_path(input)).to eq('/a/c')
  end

  it 'case 4' do
    input = '/opt/brew/./lib/../python//../bin/'

    expect(simplify_path(input)).to eq('/opt/brew/bin')
  end

  it 'case 5' do
    input = '/../'

    expect(simplify_path(input)).to eq('/')
  end

  it 'case 6' do
    input = '/../h'

    expect(simplify_path(input)).to eq('/h')
  end

  it 'case 7' do
    input = '/a/./b/../../c/'

    expect(simplify_path(input)).to eq('/c')
  end
end

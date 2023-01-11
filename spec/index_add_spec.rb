require './lib/index_add'

RSpec.describe IndexAdd do
  it 'given an arrray of numbers it can find which members add up to a target' do
    nums = [2, 7, 11, 15]

    target = 9

    expect(IndexAdd.new(nums, target).solution).to eq([0, 1])
  end

  it 'given an arrray of numbers it can find which members add up to a target' do
    nums = [3, 2, 4]

    target = 6

    expect(IndexAdd.new(nums, target).solution).to eq([1, 2])
  end
end
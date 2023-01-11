require './lib/index_add'
require 'benchmark'

RSpec.describe IndexAdd do
  describe 'first solution' do
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
  
  describe 'second solution' do
    it 'can solve the same examples' do
      nums = [2, 7, 11, 15]

      target = 9

      expect(IndexAdd.new(nums, target).second_solution).to eq([0, 1])
    end

    it 'given an arrray of numbers it can find which members add up to a target' do
      nums = [3, 2, 4]

      target = 6

      expect(IndexAdd.new(nums, target).second_solution).to eq([1, 2])
    end
  end

  describe 'benchmarks' do
    it 'outputs benchmarks' do
      data =  {nums1: {nums: [2, 7, 11, 15], target: 9}, nums2: {nums: [3, 2, 4], target: 6} }
      
      data.each do |data, nums|
        puts "First: "
        puts Benchmark.measure { IndexAdd.new(nums[:nums], nums[:target]).solution}
        puts "Second: " 
        puts Benchmark.measure { IndexAdd.new(nums[:nums], nums[:target]).second_solution}
        puts "\n"
      end
    end
  end
end
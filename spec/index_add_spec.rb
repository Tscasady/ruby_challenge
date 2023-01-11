require './lib/index_add'
require 'benchmark'

RSpec.describe IndexAdd do
  let!(:indexer) { IndexAdd.new }
  let!(:data) {
      {
        nums1: {nums: [2, 7, 11, 15], target: 9}, 
        nums2: {nums: [3, 2, 4], target: 6},
        nums3: {nums: [12, 42, 31, 23, 41, 23, 452, 12, 5, 2, 123, 432, 1231, 123, 432, 213423, 1234, 1234, 2134, 3451, 1234, 1234, 53141, 543145, 3, 1234, 51345, 1234531, 1, 1345, 134, 3415, 1345, 134, 45, 543, 134], target: 7}
      }
    }
  describe 'first solution' do
    it 'given an arrray of numbers it can find which members add up to a target' do
      nums = [2, 7, 11, 15]

      target = 9

      expect(indexer.solution(nums, target)).to eq([0, 1])
    end

    it 'given an arrray of numbers it can find which members add up to a target' do
      nums = [3, 2, 4]

      target = 6

      expect(indexer.solution(nums, target)).to eq([1, 2])
    end
  end
  
  describe 'second solution' do
    it 'can solve the same examples' do
      nums = [2, 7, 11, 15]

      target = 9

      expect(indexer.solution(nums, target)).to eq([0, 1])
    end

    it 'given an arrray of numbers it can find which members add up to a target' do
      nums = [3, 2, 4]

      target = 6

      expect(indexer.second_solution(nums, target)).to eq([1, 2])
    end
  end

  describe 'benchmarks' do
    it 'outputs benchmarks' do

      
      data.each do |data, nums|
        puts "First: "
        puts Benchmark.measure { indexer.solution(nums[:nums], nums[:target])}
        puts "Second: " 
        puts Benchmark.measure { indexer.second_solution(nums[:nums], nums[:target])}
        puts "\n"
      end
    end
  end
end
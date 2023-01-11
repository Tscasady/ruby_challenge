require 'benchmark'


data =  {nums1: {nums: [2, 7, 11, 15], target: 9}, nums2: {nums: [3, 2, 4], target: 6} }

data.each do |nums, targets|
  puts Be{ IndexAdd.new(nums[nums], target[target])}
end

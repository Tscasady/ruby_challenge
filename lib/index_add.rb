class IndexAdd
  def initialize(nums, target)
    @nums = nums
    @target = target
  end

  def solution
    solution = []
    @nums.each_with_index do |num, index|
      next if num > @target
      @nums.length.times do |count|
        next if index == count
        solution << index if num + @nums[count] == @target
      end
    end
    solution.uniq
  end

  def second_solution
    solution = []
    @nums.each do |num|
      next if num > @target

      if @nums.include?(@target - num) && (@target - num != num)
        solution << @nums.find_index(num)
        solution << @nums.find_index(@target - num)
      end
    end
    solution.uniq
  end
end
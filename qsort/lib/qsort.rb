require 'log_buddy'

module RubyChallenges
  class QSort
    attr_accessor :arr

    def initialize
      self
    end
    
    def sort(arr=@arr)
      return arr if (0..1).include?(arr.length)
      
      pivot_value = get_pivot(arr)
      
      less = arr.map { |elem| elem if elem < pivot_value}.compact
      more = arr.map { |elem| elem if elem > pivot_value}.compact
      
      return sort(less).concat([pivot_value]).concat(sort(more))
    end

    def get_pivot(arr)
      arr[arr.length / 2]
    end
  end
end
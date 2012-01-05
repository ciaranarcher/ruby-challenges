require 'log_buddy'

module RubyChallenges
  class QSort
    attr_accessor :arr

    def initialize
      self
    end
    
    def sort(arr=@arr)
      return arr if arr.nil? || (0..1).include?(arr.length)
      pivot_value = get_pivot
      less = arr.map { |elem| elem if elem < pivot_value}.compact!
      more = arr.map { |elem| elem if elem >= pivot_value}.compact!
      d {pivot_value; less; more}
      return sort(less) << pivot_value if more.nil?
      return pivot_value << sort(more) if less.nil?
      return pivot_value if more.nil? && less.nil?
      return sort(less) << pivot_value << sort(more)
    end

    def get_pivot
      @arr[@arr.length / 2]
    end
  end
end
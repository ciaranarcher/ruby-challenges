require 'log_buddy'

module RubyChallenges
  class BubbleSort
    def initialize
      self
    end

    def sort(arr)
      begin
        swap_done = compare_values(arr)
      end while swap_done
      arr
    end

    private

    #def compare_values(arr, i=0)
    #  d {arr.length; i; i + 1; @swap_done}
    #
    #  if (i + 1) < arr.length && i < arr.length
    #    # try swap elements
    #    if arr[i + 1] > arr[i]
    #      swap_elements(arr[i], arr[i + 1])
    #      @swap_done = true
    #    end 
    #    compare_values(arr, i + 1)
    #  end
    #end

    def compare_values(arr)
      swapped = false
      
      for i in (0..arr.length - 1)
        begin
          swap_elements(arr, i, i + 1) 
          swapped = true
        end if (!arr[i + 1].nil? && arr[i] > arr[i + 1])
      end
      swapped
    end

    def swap_elements(arr, i, j)
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
    end
  end
end
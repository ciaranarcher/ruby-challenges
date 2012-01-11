require 'log_buddy'

module RubyChallenges
  class BubbleSort
    def initialize
    end

    def sort(arr, mode='recursive')
      if mode == 'recursive'
        begin
          swap_done = compare_values_recursive(arr)
        end while swap_done
      else
        begin
          swap_done = compare_values_recursive(arr)
        end while swap_done 
      end
      arr
    end

    private

    def compare_values_recursive(arr, i=0, swap_done=false)
      if (i + 1) < arr.length && i < arr.length
        if arr[i] > arr[i + 1]
          swapped = swap_elements(arr, i, i + 1)
          swap_done = true if swapped
        end 
        compare_values_recursive(arr, i + 1, swap_done)
      end
      swap_done
    end

    def compare_values_iterative(arr)
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
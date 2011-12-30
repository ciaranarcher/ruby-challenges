require 'log_buddy'

module RubyChallenges
  class List
    attr_accessor :length
    attr_accessor :first

    def initialize
      @length = 0
    end
    
    # add at end
    def <<(item)
      if @first.nil?
        # no items on the list
        @first = item
        @first.next_item = nil
        @first.prev_item = item
        @length += 1
      else
        # move though the list until we find an item where next_item is nil
        list_item = @first
        while !list_item.next_item.nil?
          list_item = list_item.next_item
        end
        list_item.next_item = item
        item.next_item = nil
        item.prev_item = list_item
        @length += 1
      end
    end

    def add_after(pos, item)
      raise IndexError if pos > (@length - 1)
      
      list_item = @first
      
      (0..pos).each do |i|
        if i == pos
          break
        end
        list_item = list_item.next_item
      end  
      
      # we now have the list item we wish to add our new item after
      item.prev_item = list_item
      item.next_item = list_item.next_item
      list_item.next_item = item
      
      @length += 1
    end

    def to_a
      arr = []
      list_item = @first
      arr << list_item.value
      while !list_item.next_item.nil?
        list_item = list_item.next_item
        arr << list_item.value
      end
      arr
    end
  end
end
module RubyChallenges
  class Item
    attr_accessor :value
    attr_reader :next_item
    attr_accessor :prev_item

    def initialize
      next_item = nil
      prev_item = nil
    end
  end
end


require_relative '../lib/bubble_sort'
require 'tree'
require 'log_buddy'


module RubyChallenges
  describe BubbleSort do
    it 'should be created ok' do
      BubbleSort.new
    end
    describe 'when there is an empty array' do
      before(:each) do
        @sorter = BubbleSort.new
        @target = []
      end
      it 'should return an empty array' do
        @sorter.sort(@target).should == []
      end
      
    end
  end
end
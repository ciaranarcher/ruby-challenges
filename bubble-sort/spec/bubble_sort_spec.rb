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
    describe 'when there is an array of one element' do
      before(:each) do
        @sorter = BubbleSort.new
        @target = [1]
      end
      it 'should return the same array' do
        @sorter.sort(@target).should == [1]
      end
    end
    describe 'when there is an array of more than one element' do
      before(:each) do
        @sorter = BubbleSort.new
        @target1 = [1, 3, 2]
        @target2 = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
      end
      it 'should return a sorted array' do
        @sorter.sort(@target1).should == [1, 2, 3]
        @sorter.sort(@target2).should == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      end
    end
  end
end
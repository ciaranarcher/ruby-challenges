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
        @target1_sorted = [1, 2, 3]
        @target2_sorted = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      end
      it 'should return a sorted array using iterative mode' do
        @sorter.sort(@target1, 'iterative').should == @target1_sorted
        @sorter.sort(@target2, 'iterative').should == @target2_sorted
      end
      it 'should return a sorted array using recursive mode' do
        @sorter.sort(@target1, 'recursive').should == @target1_sorted
        @sorter.sort(@target2, 'recursive').should == @target2_sorted
      end
    end
  end
end
require_relative '../lib/qsort'
require 'log_buddy'


module RubyChallenges
  describe QSort do
    it 'should be created OK' do
      QSort.new
    end
    describe 'when there is an empty array' do
      before (:each) do
        @sorter = QSort.new
        @target = []
      end
      it 'should return an empty array' do
        @sorter.arr = @target
        @sorter.sort.should == []
      end
    end
    describe 'when there is an array of one element' do
      before (:each) do
        @sorter = QSort.new
        @target = [1]
      end
      it 'should return an empty array' do
        @sorter.arr = @target
        @sorter.sort.should == [1]
      end
    end
    describe 'when there is an array of three elements [1, 3, 2]' do
      before (:each) do
        @sorter = QSort.new
        @target = [1, 3, 2]
      end
      pending 'should return a pivot value' do 
        @sorter.arr = @target
        @sorter.get_pivot.should > 0
      end
      it 'should return a sorted array' do
        @sorter.arr = @target
        @sorter.sort().should == [1, 2, 3]
      end
    end
  end
end
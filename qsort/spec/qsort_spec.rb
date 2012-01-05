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
    describe 'when there is more than one element in an array' do
      before (:each) do
        @sorter = QSort.new
      end
      it 'passing an array of three elements [1, 3, 2] should return a sorted array' do
        @sorter.arr = [1, 3, 2]
        @sorter.sort().should == [1, 2, 3]
      end
      it 'passing an array of ten elements [10, 9, 8, 7, 6, 5, 4, 3, 2, 1] should return a sorted array' do
        @sorter.arr = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
        @sorter.sort().should == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      end
    end
  end
end
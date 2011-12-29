require_relative '../lib/item'
require_relative '../lib/list'

module RubyChallenges

  describe List do
    it 'should be created with a length of zero' do
      list = List.new
      list.length.should == 0
    end
    describe 'once created' do
      before(:all) do
          @list = List.new
      end
      it 'should add an item at the end of the list #1' do
        item = Item.new
        item.value = 1
        @list << item
        @list.length.should == 1
      end
      it 'should add an item at the end of the list #2' do
        item = Item.new
        item.value = 2
        @list << item
        @list.length.should == 2
      end
      it 'should have 2 items matching [1,2]' do
        @list.to_a.should == [1, 2]
        @list.length.should == 2
      end
    end
  end
end
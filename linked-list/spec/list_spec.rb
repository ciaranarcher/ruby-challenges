require_relative '../lib/item'
require_relative '../lib/list'

module RubyChallenges

  describe List do
    it 'should be created with a length of zero' do
      list = List.new
      list.length.should == 0
    end
    describe 'boundry conditions' do
      before(:each) do
        @list = List.new
      end
      it 'should not allow an item be added to an index that does not exist' do
        item = Item.new
        item.value = 'a'
        # try adding an item after 1, which doesn't exist
        lambda {@list.add_after(0, item)}.should raise_error
        lambda {@list.add_after(1, item)}.should raise_error
        lambda {@list.add_after(2, item)}.should raise_error
      end
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
      it 'should have 2 items matching [1, 2]' do
        @list.to_a.should == [1, 2]
        @list.length.should == 2
      end
      it 'should allow an item be added after index 0' do
        item = Item.new
        item.value = 3
        @list.add_after(0, item)
        @list.length.should == 3
      end
      it 'should have 3 items matching [1, 3, 2]' do
        @list.to_a.should == [1, 3, 2]
        @list.length.should == 3
      end
      it 'should allow an item be added after index 2' do
        item = Item.new
        item.value = 4
        @list.add_after(2, item)
        @list.length.should == 4
      end
      it 'should have 4 items matching [1, 3, 2, 4]' do
        @list.to_a.should == [1, 3, 2, 4]
        @list.length.should == 4
      end
      it 'should allow an item be added after index 1' do
        item = Item.new
        item.value = 5
        @list.add_after(1, item)
        @list.length.should == 5
      end
      it 'should have 5 items matching [1, 3, 5, 2, 4]' do
        @list.to_a.should == [1, 3, 5, 2, 4]
        @list.length.should == 5
      end
      it 'should allow an item be added after last index' do
        item = Item.new
        item.value = 6
        @list.add_after(@list.length-1, item)
        @list.length.should == 6
      end
      it 'should have 6 items matching [1, 3, 5, 2, 4, 6]' do
        @list.to_a.should == [1, 3, 5, 2, 4, 6]
        @list.length.should == 6
      end
    end
  end
end
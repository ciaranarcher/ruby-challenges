require_relative '../lib/item'
require 'log_buddy'

module RubyChallenges

describe Item do
		it 'should be created' do
			Item.new
		end
		describe 'once created' do
			before(:each) do
			    @item = Item.new
			end
			it 'should respond to value message' do
				@item.should respond_to :value
			end
			it 'should accept a string' do
				test_val = 'hello!' 
				@item.value = test_val
				@item.value.should == test_val
			end
			it 'should accept a number' do
				test_val = 1234 
				@item.value = test_val
				@item.value.should == test_val
			end
			it 'should respond to next_item message' do
				@item.should respond_to :next_item
			end
			it 'should respond to prev_item message' do
				@item.should respond_to :prev_item
			end
			it 'should repond to next_item with a reference to nil' do
				@item.next_item.nil?.should == true
			end
			it 'should repond to prev_item with a reference to nil' do
				@item.prev_item.nil?.should == true
			end
		end

	end

end
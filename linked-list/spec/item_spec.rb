require_relative '../lib/item'

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
				@item = Item.new
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
		end

	end

end
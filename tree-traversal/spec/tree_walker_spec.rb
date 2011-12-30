require_relative '../lib/tree_walker'
require 'tree'
require 'log_buddy'


module RubyChallenges
  describe TreeWalker do
    it 'should be created ok' do
      TreeWalker.new
    end
    describe 'when there is an existing tree' do
      before(:each) do
        @root_node = Tree::TreeNode.new('A', 'A') 
        child1 = Tree::TreeNode.new('B', 'B')
        child1 << Tree::TreeNode.new('D', 'D')
        child1 << Tree::TreeNode.new('E', 'E')
        @root_node << child1
        @root_node << Tree::TreeNode.new('C', 'C')
        @walker = TreeWalker.new
      end
      it 'should look like example above' do
        @root_node.print_tree
      end
      it 'should respond to traverse' do
        @walker.should respond_to :traverse
      end
      it 'should recursively traverse the tree returning ABDEC' do
        @walker.traverse(@root_node).should == 'ABDEC'
      end
      it 'should recursively traverse the tree giving importance to level thus returning A|BC|DE|' do
        @walker.traverse(@root_node, true).should == 'A|BC|DE|'
      end
    end
  end
end
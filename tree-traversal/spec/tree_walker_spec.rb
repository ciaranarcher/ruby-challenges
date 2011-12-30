require_relative '../lib/tree_walker'
require 'tree'
require 'log_buddy'


module RubyChallenges
  describe TreeWalker do
    it 'should be created ok' do
      TreeWalker.new
    end
    describe 'when there is an existing tree' do
      before(:all) do
        @root_node = Tree::TreeNode.new('root', 'A') 
        child1 = Tree::TreeNode.new('child1', 'B')
        child1 << Tree::TreeNode.new('grandchild1', 'D')
        child1 << Tree::TreeNode.new('grandchild2', 'E')
        @root_node << child1
        @root_node << Tree::TreeNode.new('child2', 'C')
        @root_node.print_tree
      end
      before(:each) do
        @walker = TreeWalker.new
      end
      it 'should respond to traverse' do
        @walker.should respond_to :traverse
      end
      it 'should return the value of the root node of the tree' do
        @walker.traverse(@root_node).should include('A')
      end
    end
  end
end
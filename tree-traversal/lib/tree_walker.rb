require 'log_buddy'

module RubyChallenges
  class TreeWalker
    def initalize
    end

    def traverse(root)
      traverse_children(root)
    end

    private 

    def traverse_children(node)
      values = node.content
      children = node.children
      children.each do |child|
        values << traverse_children(child)
      end
      values
    end
  end
end
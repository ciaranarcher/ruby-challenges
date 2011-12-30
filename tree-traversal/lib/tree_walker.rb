require 'log_buddy'

module RubyChallenges
  class TreeWalker
    def initalize
    end

    def traverse(root, levels=false)
      if levels
        traverse_children_level_first(root)
      else
        traverse_children(root)
      end
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

    def traverse_children_level_first(node)
      
      # check if the current node is the root, and store value if so
      values = ''
      values = node.content + '|' if node.parent.nil?

      children = node.children
      # print values
      children.each do |child|
        values << child.content
      end

      values << '|' unless children.length == 0

      # traverse each child recursively
      children.each do |child|
        values << traverse_children_level_first(child)
      end
      values
    end

  end
end
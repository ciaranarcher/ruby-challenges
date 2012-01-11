require 'log_buddy'

module RubyChallenges
  class TreeWalker
    def initalize
    end

    def traverse(root, breath_first=false)
      if breath_first
        traverse_children_breath_first(root)
      else
        traverse_children_depth_first(root)
      end
    end

    private 

    def traverse_children_depth_first(node)
      values = node.content
      children = node.children
      children.each do |child|
        values << traverse_children_depth_first(child)
      end
      values
    end

    def traverse_children_breath_first(node)
      
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
        values << traverse_children_breath_first(child)
      end
      values
    end
  end
end
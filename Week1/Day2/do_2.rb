class Tree
    attr_accessor :children, :node_name

    def initialize(name, children=[])

        if name.is_a? Hash then
            node = name.first
            name = node[0]
            children = node[1]
        end
        if children.is_a? Hash then
            children = children.map {|child_name,grandchildren| Tree.new(child_name, grandchildren)}
        end
        @children = children
        @node_name = name
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end

end

#ruby_tree = Tree.new("Ruby",
#    [Tree.new("Reia"),
#     Tree.new("MacRuby")])

#puts "Visiting a node"
#ruby_tree.visit{|node| puts node.node_name}
#puts

#puts "Visiting entire tree"
#ruby_tree.visit_all {|node| puts node.node_name}

ruby_tree = Tree.new( {"grandpa"=>{"test"=>{}}} )

puts "Visiting a node"
ruby_tree.visit{|node| puts node.node_name}
puts

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
family_tree_19 = {oldest: "Jim", older: "Joe", younger: "Jack"}
family_tree_19[:youngest] = "Jeremy"
p family_tree_19

#Named parameter "like" behavior...
def adjust_colors (props = {foreground: "red", background: "white"})
  puts "Foreground: #{props[:foreground]}" if props[:foreground]
  puts "Background: #{props[:background]}" if props[:background]
end
adjust_colors

adjust_colors ({:foreground => "green"})
adjust_colors background: "yella"
adjust_colors :background => "magenta"


# Let's say you have a Hash
a_hash = { :one => "one" }

# Then, you output it
puts a_hash

# if you try to do it in one step, you get a SyntaxError
# puts { :one => "one" }

# RUBY GETS CONFUSED AND THINKS {} IS A BLOCK!!!

# To get around this, you can use parens
puts ({ :one => "one" })

#Or drop the {} altogether
puts one: "one"

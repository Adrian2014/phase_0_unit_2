# U2.W6: Drawer Debugger


# I worked on this challenge [with: Angela ].


# 2. Original Code

class Drawer

  attr_reader :contents

  # Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item (item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #pop removes the last element in an array
    @contents.delete(item)
  end

  def dump  # what should this method return?
    @contents = []
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end

class Silverware
  attr_reader :type

  # Are there any more methods needed in this class? We added drop.

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean
    puts "that is some clean shit!"
    @clean = true
  end

  def clean_silverware
    @clean = true
  end

  def drop
    puts "What the hell man! Now it's all dirty!"
    @clean = false
  end

  def toss
    puts "toss that into the drawer!"
    @clean = true
  end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat

removed_knife.clean_silverware

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? This should return the contents of the drawer.

fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
fork = silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
fork.eat


#BONUS SECTION
puts fork.clean == true

# DRIVER TESTS GO BELOW THIS LINE
spork = Silverware.new("spork")
silverware_drawer.add_item(spork)
spork = silverware_drawer.remove_item(spork) #add some puts statements to help you trace through the code...
spork.eat

puts spork.drop == false
puts spork.clean_silverware == true
puts spork.eat == false
puts spork.toss == true


# 5. Reflection
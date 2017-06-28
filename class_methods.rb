#!/usr/bin/env ruby

# ways of simulating having a class methods or simulating them

class Person1
  def self.species
    "Homo Sapien 1"
  end
end

class Person2
  def Person2.species
    "Homo Sapien 2"
  end
end

class Person3
  class << self
    def species
      "Homo Sapien 3"
    end
  end
end

class Person4; end;
class << Person4
  def species
    "Homo Sapien 4"
  end
end

class Person5; end;
def Person5.species
  "Homo Sapien 5"
end

class Person6; end;
Person6.instance_eval do
  def species
    "Homo Sapien 6"
  end
end

puts Person1.species
puts Person2.species
puts Person3.species
puts Person4.species
puts Person5.species
puts Person6.species

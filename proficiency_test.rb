class Person
  attr_reader :name
  attr_writer :childcanseeme

  def initialize(boy_or_girl, name, age)
    @name = name

    @junk = boy_or_girl == "boy" ? "weiner" : "vagina"
  end

  def talk
    "I am #{name}"
  end

  def to_s
    "#{talk} and #{flash}"
  end

  private
    def flash
      "I am have a thick meaty #{@junk}!"
    end
    cantseeme = "invisible"
  protected
    childcanseeme = 'kiddeecansee'
end


class Ninja < Person
  attr_reader :nindo


  def initialize(boy_or_girl, age, nindo)
    super(boy_or_girl, "unnamed", age)
    @nindo = nindo
  end

  def ninja_vision
    p @@childcanseeme
  end

   def to_s
     "#{@name}, age #{@age}, #{@nindo}"
   end

end

class CopyCat < Ninja
  def initialize(boy_or_girl, age, nindo)
    super(boy_or_girl, age, nindo)
  end
end

leo = Ninja.new("boy", 24, "slice all things into 3 equal pieces")
leo2 = Ninja.new("boy", 24, "slice all things into 3 equal pieces")

# p leo
# leo.ninja_vision
# leo.childcanseeme = 14
p leo.childcanseeme
p leo2.childcanseeme


# person = Person.new("girl", "kelly", 25)
# p person.to_s

# cc = CopyCat.new("boy", 24, "slice all things into 3 equal pieces")
# cc.childcanseeme



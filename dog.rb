class Dog 
    attr_accessor :name 
    attr_reader :breed
    @@all_dogs = []
    @@all_names = []
    def initialize(name, breed)
        @name = name
        @breed = breed
        Dog.all << self
        Dog.names << @name
    end
    def self.all
        @@all_dogs
    end
    def self.find_breed(given_breed)
      self.all.select { |input_breed| input_breed.breed.downcase == given_breed}
    end
    def self.names 
      @@all_names
    end
    def sit    
        "#{@name} is sitting"
    end
    def roll_over   
        "#{@name} is rolling over"
    end
    def speak
        "roof roof"
    end
  end
#   dog1 = Dog.new("Fido", "german shepard")
#   dog2 = Dog.new("Rex", "Shitzu")
#   dog3 = Dog.new("Carrot", "Pomeranian")
#   dog4 = Dog.new("Max", "German Shepard")
#   dog5 = Dog.new("Edgar", "Bulldog")
#   # Dog.find_breed("german shepard")
#   # dog1.breed
#   dog1.speak
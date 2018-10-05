class Owner
  attr_reader :name , :species
  @@all=[]
  @@count = 0
  
    def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@count
  end
  
  def self.reset_all
    @@all.clear
    @@count = 0
  end
  
  def say_species
   "I am a #{@species}."
  end
  
end
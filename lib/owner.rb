class Owner
  attr_reader  :species , :pets
  attr_accessor :name
  @@all=[]
  @@count = 0
  
    def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats=> []}
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
    @pets.each do |key, array|
    @pets[key]=[]
  end
  end
  
  def say_species
   "I am a #{@species}."
  end
  
  
  
end
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

  end
  
  
  
  def say_species
   "I am a #{@species}."
  end
  
  def buy_fish (name)
    fish=Fish.new(name)
    self.pets[:fishes] << fish
    
  end
  
    def buy_dog (name)
    
    self.pets[:dogs] << Dog.new(name)
    
    end
  
    def buy_cat (name)
    
    self.pets[:cats] << Cat.new(name)
    
     end
     
     def walk_dogs
       self.pets[:dogs] = self.pets[:dogs].map{ |dog| dog.mood="happy"  }
     end
     
      def play_with_cats
       self.pets[:cats] = self.pets[:cats].map{ |cat| cat.mood="happy"  }
     end
     
      def play_with_cats
       self.pets[:cats] = self.pets[:cats].map{ |cat| cat.mood="happy"  }
     end
     
     
  
  
end
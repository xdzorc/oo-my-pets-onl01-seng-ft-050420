class Owner
  # code goes here
  @@all=[]
  @@count=0
  attr_reader :name, :species
  def initialize(name,species="human")
    @name =name
    @species =species
    @@all << self
  end
  
  def say_species
     "I am a human."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    self.all.count
  end
  
  def self.reset_all 
    self.all.clear
  end
  
  def cats 
    Cat.all.select {|cat| cat.owner==self}
  end
  
  def dogs 
    Dog.all.select {|dog| dog.owner==self}
  end
  
  def buy_cat(name)
    a=Cat.new(name)
    a.owner=self
    self.cats
  end
    
  
end


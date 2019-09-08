class Owner
  # code goes here
  attr_accessor :owner, :cats, :dogs
  attr_reader :species, :name

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self

  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    @cats << cat
  end

  def dogs
    @dogs << dog
  end

  def buy_cat(cat)
    Cat.new(cat, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    @cats.each {|cat| cat.mood = "happy"}
  end

  def sell_pets
    @dogs.each {|dog| dog.mood = "nervous"}
    @dogs.each {|dog| dog.owner = nil}
    @dogs.clear
    @cats.each {|cat| cat.mood = "nervous"}
    @cats.each {|cat| cat.owner = nil}
    @cats.clear
  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end
end

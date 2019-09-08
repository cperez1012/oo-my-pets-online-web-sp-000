class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name

  @@all =[]

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @owner.new_cat(self)
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
end

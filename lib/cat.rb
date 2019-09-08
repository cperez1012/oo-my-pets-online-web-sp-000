class Cat
  # code goes here
  attr_accessor :mood, :owner
  attr_reader :name

  @@all =[]

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    owner.new_cat(self)
  end

  def self.all
    self
  end
end

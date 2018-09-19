class Pirate 

  attr_accessor :name, :weight, :height

  @@all = []

  def initialize(name=nil, weight=nil, height=nil)
    @name, @weight, @height = name, weight, height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end

end

class Pirate

  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(name:, weight:, height:)
    @name = name
    @weight = weight
    @height = height
    # @ships = []
    @@all << self
  end

  def self.all
    @@all
  end

end

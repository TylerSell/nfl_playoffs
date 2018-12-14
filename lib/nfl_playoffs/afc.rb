class AFC
  extend Display

  attr_accessor :name, :wins, :losses, :ties, :city, :combined

  def initialize(combined, wins, losses, ties)
    @combined = combined
    @wins = wins
    @losses = losses
    @ties = ties
    @@all << self
  end

  @@all = []


  def self.all
    @@all
  end

end

class Display
  attr_accessor :name, :wins, :losses, :ties 

  def self.playoff_teams
    self.all.each_with_index do |team, index|
      if index >= 0 && index <= 5  
        puts "#{index + 1}. #{team.name} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def self.bye_teams
    self.all.each_with_index do |team, index|
      if index <= 1 
        puts "#{index + 1}. #{team.name} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def self.home_field
    self.all.each_with_index do |team, index|
      if index == 0 
        puts "#{index + 1}. #{team.name} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def self.wild_card
    self.all.each_with_index do |team, index|
      if index >= 4 && index <= 5
        puts "#{index + 1}. #{team.name} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
end
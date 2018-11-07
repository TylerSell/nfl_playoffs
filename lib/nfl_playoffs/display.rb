module Display
  attr_accessor :name, :wins, :losses, :ties, :city, :combined

  def playoff_teams
    all.each_with_index do |team, index|
      if index >= 0 && index <= 5  
        puts "#{index + 1}. #{team.combined} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def bye_teams
    self.all.each_with_index do |team, index|
      if index <= 1 
        puts "#{index + 1}. #{team.combined} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def home_field
    self.all.each_with_index do |team, index|
      if index == 0 
        puts "#{index + 1}. #{team.combined} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
  def wild_card
    self.all.each_with_index do |team, index|
      if index >= 4 && index <= 5
        puts "#{index + 1}. #{team.combined} #{team.wins}-#{team.losses}-#{team.ties}"
      end
    end
  end
  
end
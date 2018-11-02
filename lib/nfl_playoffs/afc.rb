class AFC < Display
  attr_accessor :name, :wins, :losses, :ties 
  
  @@all = []
  
  def self.scrape_afc
    
  end
  
  def self.all 
    @@all 
  end
  
  # test data below 
  
  def self.blank
    team = self.new
    team.name = "Chiefs"
    team.wins = "7"
    team.losses = "1"
    team.ties = "0"

    @@all << team  
  end
  
  def self.blank2
    team = self.new
    team.name = "Patriots"
    team.wins = "6"
    team.losses = "2"
    team.ties = "0"

    @@all << team  
  end
  
  def self.blank3
    team = self.new
    team.name = "Steelers"
    team.wins = "4"
    team.losses = "2"
    team.ties = "1"

    @@all << team  
  end
  
  def self.blank4
    team = self.new
    team.name = "Texans"
    team.wins = "5"
    team.losses = "3"
    team.ties = "0"

    @@all << team  
  end
 
  def self.blank5
    team = self.new
    team.name = "Chargers"
    team.wins = "5"
    team.losses = "2"
    team.ties = "0"

    @@all << team  
  end
  
  def self.blank6
    team = self.new
    team.name = "Bengals"
    team.wins = "5"
    team.losses = "3"
    team.ties = "0"

    @@all << team  
  end
  
   def self.blank7
    team = self.new
    team.name = "Ravens"
    team.wins = "4"
    team.losses = "4"
    team.ties = "0"

    @@all << team  
  end
end
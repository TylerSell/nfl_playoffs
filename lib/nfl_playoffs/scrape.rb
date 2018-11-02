class Scrape
  attr_accessor :name, :wins, :losses, :ties 
  
  def self.scrape_afc
    afc = []
    
    afc << self.blank
    afc << self.blank2 
    afc << self.blank3
    afc << self.blank4
    afc << self.blank5
    afc << self.blank6
  end
  
  def self.blank
    team = self.new
    team.name = "Chiefs"
    team.wins = "7"
    team.losses = "1"
    team.ties = "0"

    team  
  end
  
  def self.blank2
    team = self.new
    team.name = "Patriots"
    team.wins = "6"
    team.losses = "2"
    team.ties = "0"

    team  
  end
  
  def self.blank3
    team = self.new
    team.name = "Steelers"
    team.wins = "4"
    team.losses = "2"
    team.ties = "1"

    team  
  end
  
  def self.blank4
    team = self.new
    team.name = "Texans"
    team.wins = "5"
    team.losses = "3"
    team.ties = "0"

    team  
  end
 
  def self.blank5
    team = self.new
    team.name = "Chargers"
    team.wins = "5"
    team.losses = "2"
    team.ties = "0"

    team  
  end
  
  def self.blank6
    team = self.new
    team.name = "Bengals"
    team.wins = "5"
    team.losses = "3"
    team.ties = "0"

    team  
  end
  
  def self.scrape_nfc
    nfc = []
  end
  
  def self.afc_playoff_teams
    self.scrape_afc.each_with_index do |team, index|
      puts "#{index + 1}. #{team.name} #{team.wins}-#{team.losses}-#{team.ties}"
    end
  end
  
  def self.nfc_playoff_teams
    
  end
  
  def self.afc_bye
    
  end
  
  def self.nfc_bye
    
  end
  
  def self.afc_home_field
    
  end
  
  def self.nfc_home_field
    
  end
  
end
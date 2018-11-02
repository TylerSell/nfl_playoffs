class CLI 
  
  def call 
    welcome
    menu
  end
  
  def welcome
    puts "If the season ended today..."
    puts ""
  end
  
  def menu 
    puts "Choose one of the following numbers:"
    puts ""
    puts <<~HEREDOC
      1. AFC Playoff Teams 
      2. NFC Playoff Teams 
      3. AFC First Round Bye 
      4. AFC Home Field Advantage
      5. NFC First Round Bye
      6. NFC Home Field Advantage
      7. Exit 
    HEREDOC
    
    input = gets.strip
    case input 
      when "1"
        Scrape.afc_playoff_teams
      when "2"
        nfc_playoff_teams
      when "3"
        afc_bye
      when "4"
        afc_home_field
      when "5"
        nfc_bye
      when "6"
        nfc_home_field
      when "7"
        goodbye
        exit 
      else 
        puts "I don't understand please choose again."
        puts ""
        menu
    end
  end
  
  def goodbye
    puts "Goodbye. Check back next week for an update."
  end
end
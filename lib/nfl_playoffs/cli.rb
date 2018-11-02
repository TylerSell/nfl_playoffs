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
      7. AFC Wild Card 
      8. NFC Wild Card 
      9. Exit 
    HEREDOC
    
    input = gets.strip
    case input 
      when "1"
        AFC.playoff_teams
        menu
      when "2"
        NFC.playoff_teams
        menu
      when "3"
        AFC.bye_teams
        menu
      when "4"
        AFC.home_field
        menu
      when "5"
        NFC.bye_teams
        menu
      when "6"
        NFC.home_field
        menu
      when "7"
        AFC.wild_card
        menu 
      when "8"
        NFC.wild_card
        menu 
      when "9"
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
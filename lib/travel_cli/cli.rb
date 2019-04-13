# CLI Controller
class TravelCli::Cli

  attr_accessor :locale

def call
  welcome
  list_places
  input = nil
  while input != "exit"
    input = gets.chomp.downcase
    if input == "list"
      list_places
    elsif !(0..10).include?(input.to_i)
      puts "please enter a correct command"
    elsif input != "exit"
      puts "get_selection"
      puts "show_selection"
    end
    menu
  end
  goodbye
end


#def get_selection ( )
#   @locale = nil #Place instance that you will get from Place.all
#end

#def show_selection
#  puts @locale.details
#  #all the info you want to show to the user
#end

def menu
puts "Type 'exit' to quit"
puts "Type 'list' to list places"
end


def welcome
  puts " Feel Like Traveling? "
  puts "     "
  puts "----10 Of The Best Travel Destinations You Should Visit In 2019-----"
  puts "     "
end

def get_places
  TravelCli::Scrape.scrape_places
end

def list_places
  get_places
  TravelCli::Place.all.each.with_index(1) {|place, i| puts "#{i}. #{place.name}"}
  puts
  puts " Which Location would you like to learn more about?:   "
end


 def goodbye
   puts "Happy Travels!"
 end

end

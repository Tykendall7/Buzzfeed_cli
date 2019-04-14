# CLI Controller
class TravelCli::Cli

  attr_accessor :locale

def call
  welcome
  list_places
  input = nil
  while input != "exit"
    input = gets.chomp.downcase
    case input
      when "exit"
        goodbye
      when "list"
        list_places
      when '1'..'10'
        the_location = @locale[input.to_i-1]
          puts "Location: #{the_location.name}"
          puts "#{the_location.summary}"
      else
        puts "You have not selected a valid option."
      end
    menu
  end
  #goodbye
end

#def get_selection
  #@locale = TravelCli::Place.all
  #  TravelCli::Place.all.each_with_index do |place, i|
  #  if locale == place.name[i+1]
  #      return true
  #  end
   #binding.pry
#end

#def show_selection
  #@locale.each.with_index(1) {|place, i| puts "#{place.summary}"}
  #puts "Here is more information about  ."
  #puts
  #puts " display details from get_selection"
  #outputs the summary of the input from the place.all array
#end

def menu
puts "Type 'exit' to quit"
puts "Type 'list' to list places"
end

def welcome
  puts "                   -  Feel Like Traveling?  -                         ".colorize(:light_blue)
  puts
  puts "---- 10 Of The Best Travel Destinations You Should Visit In 2019 -----" .colorize(:light_blue)
  puts
end

def get_places
  TravelCli::Scrape.scrape_places
end

def list_places
  get_places
  @locale = TravelCli::Place.all
  @locale.each.with_index(1) {|place, i| puts "#{i}. ".colorize(:light_blue) + " #{place.name}"}
  #TravelCli::Place.all.each.with_index(1) {|place, i| puts "#{i}. #{place.name}"}
  puts
  puts " Input the number of the location which would you like to learn more about:   ".colorize(:light_blue)
end

 def goodbye
   puts "Happy Travels!".colorize(:light_blue)
 end

end

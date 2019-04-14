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
    elsif input.to_i > 0
      the_location = @locale[input.to_i-1]
        puts "Location: #{the_location.name}"
        puts "#{the_location.summary}"
    else !(0..10).include?(input.to_i)
      puts "You have not selected a valid option."
  end
    menu
  end
  goodbye
end

def get_selection
  #@locale = TravelCli::Place.all
  #  TravelCli::Place.all.each_with_index do |place, i|
  #  if locale == place.name[i+1]
  #      return true
  #  end
   #binding.pry
end

def show_selection
  @locale.each.with_index(1) {|place, i| puts "#{place.summary}"}
  #puts "Here is more information about  ."
  #puts
  #puts " display details from get_selection"
  #outputs the summary of the input from the place.all array
end

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
  @locale = TravelCli::Place.all
  @locale.each.with_index(1) {|place, i| puts "#{i}. #{place.name}"}
  #TravelCli::Place.all.each.with_index(1) {|place, i| puts "#{i}. #{place.name}"}
  puts
  puts " Which Location would you like to learn more about?:   "
end

 def goodbye
   puts "Happy Travels!"
 end

end

# CLI Controller
class TravelCli::Cli

def call
  welcome
  puts "Feel like traveling?"
  puts " "
  options
  goodbye
end

def welcome
  puts "     "
  puts "     "
  puts "----10 Of The Best Travel Destinations You Should Visit In 2019-----"
  puts "     "
  puts "     "
   @t_places = TravelCli::Places.places

end

def options
  input = "nil"
  while input != "exit"
    input = gets.strip.downcase
   case input
   when "1"
     puts "Here are more details about Nairobi, Kenya"
   when "2"
     puts "Here are more details about Juneau, United States"

   when "3"
     puts "Here are more details about Hong Kong"

   when "4"
     puts "Here are more details about Litchfield National Park, Australia"

   when "5"
     puts "Here are more details about Patagonia, Chile"

   when "6"
     puts "Here are more details about Yukon, Canada"

   when "7"
     puts "Here are more details about San Juan, Puerto Rico"

   when "8"
     puts "Here are more details about Panama"

   when "9"
     puts "Here are more details about Matera, Italy"

   when "10"
     puts "Here are more details about Yokohama, Japan"

   when "list"
     options

   else
     puts "Not sure, type list or exit"
   end
  end

 end

 def goodbye
   puts "Happy Travels!"
 end

end

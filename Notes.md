How to build a CLI Gem

1. Plan your gem, imagine your interface
2. start with the project structure - google search
3. start with a entry point - the file run
4. force that to build the CLI interface
5. stub out the interface
6. start making things real
7. discover objects
8. program

you have this ty!!

def get_selection
   #Place instance that you will get from Place.all
    #TravelCli::Place.all.each {|place| puts "#{place.summary}"}
    #TravelCli::Place.all.find_index { |p| place.summary == locale } #have to define input
    #TravelCli::Place.find_index {|place| place == @ locale }
    TravelCli::Place.all.each_with_index do |place, i|
    if locale == place.name[i+1]
        return true
    end
   #binding.pry
end

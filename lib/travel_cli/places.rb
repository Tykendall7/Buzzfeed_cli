class TravelCli::Places
  attr_accessor :name, :information



def self.places
  self.scrape_locations

end

def self.scrape_locations
  travel_locations = []
  travel_locations << self.scrape_buzzfeed
  travel_locations
end

def self.scrape_buzzfeed
  doc = Nokogiri::HTML(open("https://www.buzzfeed.com/louisekhong/bring-me-2019-best-travel-destinations"))
  binding.pry
   #@scraping_block = doc.css("doc.css("h2.subbuzz__title").children.children.text")
   #doc.css("span.js-subbuzz__title-text").first.text
   #doc.css("h2.subbuzz__title").each do |ele|
    #ele.css('span').text #< too specific have to take a step back
#  end
  #["1.Nairobi, Kenya", "2.Juneau, United States", "3.Hong Kong","4.Litchfield National Park, Australia",
  #"5.Patagonia, Chile", "6.Yukon, Canada", "7.San Juan, Puerto Rico","8.Panama",
  # "9.Matera, Italy", "10.Yokohama, Japan"]
end




#def initialize(name=nil, information=nil)
#  @name = name
#  @information = information
#  self
#end

#def self.all
#  @@all
#end



#def self.places
#  puts <<-TRY
#   Which location you would like to know more about?
#   1. Nairobi, Kenya
#   2. Juneau, United States
#   3. Hong Kong
#   4. Litchfield National Park, Australia
#   5. Patagonia, Chile
#   6. Yukon, Canada
#   7. San Juan, Puerto Rico
#   8. Panama
#   9. Matera, Italy
#   10. Yokohama, Japan
#   Type 'exit' to leave
#   TRY

end

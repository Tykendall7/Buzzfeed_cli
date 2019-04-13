class TravelCli::Scrape

  URL = 'https://www.buzzfeed.com/louisekhong/bring-me-2019-best-travel-destinations'

  # DESIRED Behavior => [
    #      {:title => "1. Nairobi, Kenya", :location => " Who'll love it: animal lovers Why go in 2019:  Thanks to the recent launch of a direct flight route between  Nairobi and  New  York  City, spotting elusive lions and leopards on safari is now just that liiiiitttle bit easier.  As both  Africa's safari capital and one of the continent's fastest growing cities,  Nairobi offers a unique contrast between the city and the wild.""},
    #      {:title => "2. Juneau, United States", :location => "Who’ll love it: foodies Why go in 2019:  Juneau,  Alaska, is having a foodie moment ( I mean, why else would it be hosting the 2019  International  Food  Blogger  Conference?).  Focusing on fresh, local seafood and wild fruits, the food scene here is understated, delicious, and eco-friendly by nature.  Be sure to check out  Salt, an up-and-coming modern  Alaskan restaurant that serves food foraged by the chef himself.", },
    #      {:title => "3. Hong Kong", :location => "Who’ll love it: solo travelers  Why go in 2019:  Hong  Kong may be a small island, but it's bursting with culture!  New and exciting attractions, including museums and a huge cultural center, make it the perfect city to explore solo.  M+  Museum is slated to open this year and at 17,000 square meters, it'll be one of the largest museums of modern visual culture in the world.  It's also one of the world's safest cities, which is comforting to know if you’re traveling on your own."},
    #      {:title => "4. Litchfield National Park, Australia", :location => "example"},
    #      {:title => "5. Patagonia, Chile", :location => "example"}
    #    ]

    def self.scrape_places
        Nokogiri::HTML(open(URL)).css('.subbuzz').each do |place|
          TravelCli::Place.new(
            place.css('.js-subbuzz__title-text').text.strip,
            place.css('.subbuzz__description').text.strip)
        end
        #binding.pry
    end
  end
 # OR below

  #  def self.scrape_places
  #    doc = Nokogiri::HTML(open("URL"))
  #    travel_locations = doc.css('.subbuzz')
#
  #    travel_locations.each  {|place|
  #                    title = place.css('.js-subbuzz__title-text').text.strip,
  #                    location = place.css('.subbuzz__description').text.strip,
  #                    )}
  #        @scraped_locations << title
  #        scraped_locations
#
  #  end


#TravelCli::Scrape.print

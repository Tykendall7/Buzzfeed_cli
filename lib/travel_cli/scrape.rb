class TravelCli::Scrape

#def self.scrap
#  @doc = Nokogiri::HTML(open("https://www.buzzfeed.com/louisekhong/bring-me-2019-best-travel-destinations"))
#   @scraping_block = @doc.css("div.buzz-article-wrapper div.js-subbuzz__title-text")
# end

# def self.scrape_locations
#       @scraping_block.each do |ele|
#       name = ele.css("a.desc").text.strip
#       place = ele.css("div.sub ul li").text.strip
#       product = TravelCli::Scrape.new(name, information)
#       TravelCli::Scrape.all << places
#       binding.pry
#   end
# end

end

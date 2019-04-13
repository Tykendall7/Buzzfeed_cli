class TravelCli::Place
  attr_accessor :name, :summary, :place

  @@all = []


def initialize(name, summary)
    @name = name
    @summary = summary
    @@all << self
 end

 def self.all
   @@all
 end

#  def self.run
#      places = new
#      places.scrape
#      list = places.list
#      output = lambda do
  #      list.each_with_index{|l, i| puts "#{i+1}. #{l.title}"}
  #      puts "\nSelect a place by number or type exit: "
#      end
#  end

end

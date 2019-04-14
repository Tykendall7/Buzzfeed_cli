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



end

require 'pry'

class MicroBreweries::Brewery
  attr_accessor :brewery_name, :description, :telephone, :address
  @@all = []

  def initialize(attributes = {})
    @brewery_name = attributes[:brewery_name]
    @description = attributes[:description]
    @telephone = attributes[:telephone]
    @address = attributes[:address]
    @@all << self
  end

  def self.all
    @all
  end

  def self.scrape_breweries
    doc = Nokogiri::HTML(open("http://www.durango.org/listings/category/microbreweries"))
    binding.pry
  end
end

    #doc.css(".row").each do |row|
      #brewery_name =
#    end
#  end
#end

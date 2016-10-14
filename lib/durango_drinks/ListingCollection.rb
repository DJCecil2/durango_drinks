class DurangoDrinks::ListingCollection
  attr_reader :listings

  def initialize
    scrape
  end

  def scrape
    @listings = []

    doc = Nokogiri::HTML(open(scrape_location))
    doc.css(".listing_link").each do |listing|
      @listings << DurangoDrinks::Listing.new({
          :name => listing.css("h3").text,
          :description => listing.css(".summary").text,
          :address => listing.css(".address").text.gsub("\n", " "),
          :telephone => listing.css(".phone").text
      })
    end
  end

  def print_listings
    @listings.each_with_index do |listing, i|
      puts "#{i + 1}. #{listing.name}"
    end
  end

  def scrape_location
    throw 'A location has not been set for this collection of listings'
  end
end

class DurangoDrinks::Listing < OpenStruct
end
require File.expand_path('lib/durango_drinks/ListingCollection')

class DurangoDrinks::BreweryCollection < DurangoDrinks::ListingCollection
  def scrape_location
    'http://www.durango.org/listings/category/microbreweries'
  end
end
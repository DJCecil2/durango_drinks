require File.expand_path('lib/durango_drinks/ListingCollection')

class DurangoDrinks::CoffeeCollection < DurangoDrinks::ListingCollection
  def scrape_location
    'http://www.durango.org/listings/category/coffee-shops'
  end
end

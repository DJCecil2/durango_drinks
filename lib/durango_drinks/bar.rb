require File.expand_path('lib/durango_drinks/ListingCollection')

class DurangoDrinks::BarCollection < DurangoDrinks::ListingCollection
  def scrape_location
    'http://www.durango.org/listings/category/bars-nightlife'
  end
end

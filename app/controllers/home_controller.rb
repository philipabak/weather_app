class HomeController < ApplicationController

  def index
    weather = WeatherService.new
    geo_location = get_geo_location
    @weather = weather.get(geo_location['latitude'], geo_location['longitude'])
    @city = geo_location['city']
    @country = geo_location['country_name']
  end

end

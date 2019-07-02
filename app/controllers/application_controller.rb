require 'net/http'

class ApplicationController < ActionController::Base

  private

  def get_geo_location
    print "Request ID=#{request.remote_ip}"
    uri = URI.parse("https://ipapi.co/#{request.remote_ip}/json")
    JSON.parse(Net::HTTP.get(uri))
  end

end

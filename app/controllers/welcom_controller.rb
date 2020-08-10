require 'uri'
require 'net/http'
require 'openssl'
require 'json'

class WelcomController < ApplicationController

  def index  

    url = URI("https://covid-19-data.p.rapidapi.com/totals?format=json")

    http             = Net::HTTP.new(url.host, url.port)
    http.use_ssl     = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request          = Net::HTTP::Get.new(url)
    request["x-rapidapi-host"] = 'covid-19-data.p.rapidapi.com'
    request["x-rapidapi-key"]  = 'Sss6c3xMuomshRQhhwZwNezhKsrLp1hFfU4jsnQ37MI4fJb6gq'

    response = http.request(request)
    pandemicdata = response.read_body
    pandemicdata = JSON.parse(pandemicdata, object_class: OpenStruct) 
    
    @pandemicdata = pandemicdata.confirmed

    # pandemicdata.each do |data| 
    #   @data_view = MyObject.new(data)
    # end

    # puts response.read_body

  end
end

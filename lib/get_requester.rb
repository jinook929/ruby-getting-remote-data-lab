# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    attr_accessor :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        request = URI.parse(self.url)
        response = Net::HTTP.get_response(request)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)   
    end
end
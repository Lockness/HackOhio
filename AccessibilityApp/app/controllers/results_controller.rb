require 'uri'
require 'json'
require 'rest-client'
require 'byebug'

class ResultsController < ApplicationController

    def requestMaps
        searchTerms = params[:keywords] 
        decoded = URI.decode(searchTerms)

        url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?'
        key = 'key=' + Rails.application.config.key
        query = 'query=' + searchTerms

        url += key + '&' + query
        response = RestClient.get(url, headers={})
        places = JSON.parse(response.body)['results']

        byebug

        places.each { |e| puts e }
    end
        
    helper_method :requestMaps        
end

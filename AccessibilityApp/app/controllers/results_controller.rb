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

        if (params[:location])
            url += '&location=' + params[:location] + "&radius=" + params[:radius]
        end 

        response = RestClient.get(url, headers={})
        places = JSON.parse(response.body)['results']

        places.each { |place| 
            # if Location.all != include place, add it
            if Location.where(:placeid => place['place_id']).blank?
                place = Location.create(name: place['name'], lat: place['geometry']['location']['lat'], 
                                        long: place['geometry']['location']['lng'], formatted_address: place['formatted_address'], 
                                        placeid: place['place_id']) 
            end
        }

        return places
    end
        
    helper_method :requestMaps        
end

class PagesController < ApplicationController

    def show
    	render template: "pages/#{params[:page]}"
    end 

    def testt
        location = Location.new
        location.save
    end

    helper_method :testt
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
      @key = 'AIzaSyBSjzleaAkrRuGFZ_v-sieRM_2g8hIsQ38'
  end

end

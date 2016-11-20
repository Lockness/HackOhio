class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def home
      @key = 'AIzaSyBlRox9uSxIpBLkHVsPtx2pDBXK32evMuE'
  end

end

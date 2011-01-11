class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def get_magazine
    @magazine = Magazine.last
    @accents = @magazine.accents
  end
end

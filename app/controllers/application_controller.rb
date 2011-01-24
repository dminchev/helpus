class ApplicationController < ActionController::Base
  protect_from_forgery

  def get_magazine
    if session[:magazine_id] == nil
      @magazine = Magazine.where("active = ?", 1).first
    else
      @magazine = Magazine.find(session[:magazine_id])
    end

    if params[:magazine_id]
      @magazine = Magazine.find(params[:magazine_id])
      session[:magazine_id] = params[:magazine_id]
    end

    @accents = @magazine.accents
  end
end

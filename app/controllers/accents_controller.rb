class AccentsController < ApplicationController 
  before_filter :get_magazine
  
  def show
    @accent = Accent.find(params[:id])
    if @accent.view_type != "image"
      @model = @accent
      @photos = AccentPhoto.search(params[:id], params[:page])
    else
      if params[:photo_id]
        @current = AccentPhoto.find(params[:photo_id])
      else
        @current = @accent.accent_photos.first
      end
      @model = @current
      @prev = AccentPhoto.where("`id` < ? AND `accent_id` = ?", @current.id, @accent.id).last
      @next = AccentPhoto.where("`id` > ? AND `accent_id` = ?", @current.id, @accent.id).first      
    end
  end
  
end
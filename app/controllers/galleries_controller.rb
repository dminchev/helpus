class GalleriesController < ApplicationController 
  before_filter :get_magazine  
  
  def show    
    @model = @current = Gallery.find(params[:id])
    @prev = Gallery.where("`id` < ? AND `magazine_id` = ?", @current.id, @magazine.id).last
    @next = Gallery.where("`id` > ? AND `magazine_id` = ?", @current.id, @magazine.id).first
  end
  
end
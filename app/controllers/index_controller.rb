class IndexController < ApplicationController
  before_filter :get_magazine
  
  def cover
    render :layout => 'cover'
  end
  
  def about
  end
  
  def contact
  end
  
  def home
  end
end
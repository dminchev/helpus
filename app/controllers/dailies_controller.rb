class DailiesController < ApplicationController
  before_filter :get_magazine
  
  def index
    @dailies_list = @magazine.dailies.search(params[:page], 3)
    @model = @daily = @dailies_list.first
  end
  
  def show
    @dailies_list = @magazine.dailies.search(params[:page], 3)
    @model = @daily = Daily.find(params[:id])
  end
  
end
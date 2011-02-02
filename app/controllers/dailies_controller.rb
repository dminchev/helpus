class DailiesController < ApplicationController
  before_filter :get_magazine

  def index
    @model = @daily = @magazine.dailies.first
    @dailies_list = @magazine.dailies.order("`order` ASC").search(params[:page], 3)
  end

  def show
    @model = @daily = Daily.find(params[:id])
    @dailies_list = @magazine.dailies.order("`order` ASC").search(params[:page], 3)
  end

end
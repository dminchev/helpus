class Admin::DailiesController < Admin::AdminController
  def index
    @magazine = Magazine.find(params[:magazine_id])
    @dailies = Daily.all
  end
  
  def new
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.new
  end
  
  def edit
    @magazine = Magazine.find(params[:magazine_id])
    @daily = Daily.find(params[:id])
  end
  
  def create    
    @magazine = Magazine.find(params[:magazine_id])
    @magazine.dailies.create(params[:daily])    
    redirect_to(admin_magazine_dailies_url)
  end
  
  def update
    @daily = Daily.find(params[:id])
    @daily.update_attributes(params[:daily])
    @daily.save
    redirect_to(admin_magazine_dailies_url)
  end
end
